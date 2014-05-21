require 'csv'
require 'json'

module Diligent
  class List

    attr_accessor :specs

    class << self
      def load
        self.new.as_hash
      end
    end

    def initialize
      # TODO Optionally point at a different path?
      @specs = Bundler.load.specs
    end

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

    def as_json(filename = nil)
      json = as_hash.to_json
      write_to_file filename, json
    end

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


  protected

    def write_to_file(filename, content)
      File.open(filename, 'w') { |f| f.write(content) } if filename
      content
    end
  end
end
