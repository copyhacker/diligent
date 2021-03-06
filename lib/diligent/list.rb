require 'csv'
require 'erb'
require 'json'

module Diligent
  class List
    include ERB::Util # for html escaping

    # @!attribute project_name
    #   @return [String] the name of the project we're reading,
    #     currently assumed to be the directory name.
    attr_accessor :project_name

    # @!attribute specs
    #   @return [Bundler::SpecSet] Dependency info as generated by
    #     `Bundler.load.specs`
    attr_accessor :specs

    class << self

      # Initialize and return gem info in a single step.
      #   May be deprecated as it seems to be of limited use.
      # @return [Hash] a hash containing dependency info
      def load
        self.new.as_hash
      end
    end

    def initialize
      # TODO Optionally point at a different path?
      @project_name = File.split(FileUtils.getwd).last
      @specs = Bundler.load.specs
    end

    # Output dependency info as a hash.
    # @return [Hash] a hash containing dependency info
    def as_hash
      @specs.inject({}) do |hash, spec|
        hash[spec.name] = {
          'version'      => spec.version.to_s,
          'author'       => spec.author,
          'summary'      => spec.summary,
          'description'  => spec.description,
          'license'      => spec.license,
          'homepage'     => spec.homepage
        }

        hash
      end
    end

    # Output dependency info as JSON.
    #   A JSON string is returned by the method even if a filename is specified.
    # @param filename [String] optional name of output file
    # @return [String] a JSON string containing dependency info
    def as_json(filename = nil)
      json = as_hash.to_json
      write_to_file filename, json
    end

    # Output dependency info as CSV.
    # @param filename [String] optional name of output file
    # @return [String] a CSV string containing dependency info, unless a filename is given
    def as_csv(filename = nil)
      as_array = as_hash.inject([]) do |arr, gem_info|
        row = []
        row << gem_info.first
        gem_info.last.inject(row) do |r, i|
          r << i.last
        end
        arr << row
      end

      csv = CSV.generate do |csv|
        csv << %w{ Gem Version Author Summary Description License Homepage }
        as_array.each { |row| csv << row }
      end

      write_to_file filename, csv
    end

    # Output dependency info as HTML.
    # @param filename [String] optional name of output file
    # @return [String] a CSV string containing dependency info, unless a filename is given
    def as_html(filename = nil)
      list = as_hash
      template_path = File.join(File.dirname(__FILE__), '../../templates/list.html.erb')
      html = ERB.new(File.read(template_path)).result(binding)

      write_to_file filename, html
    end

  protected

    def write_to_file(filename, content)
      File.open(filename, 'w') { |f| f.write(content) } if filename
      content
    end
  end
end
