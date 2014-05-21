require 'thor'
require 'diligent'

module Diligent
  class CLI < Thor
    desc 'legalese', 'If you can read this, thank a lawyer.'
    def legalese
      puts Diligent::Info.legalese
    end

    desc 'list', 'List of gem information. JSON by default, or pass format option.'
    option :format
    option :outfile
    def list
      list = Diligent::List.new

      case (options[:format] || 'json')
      when 'csv'
        list.as_csv(options[:outfile] || './diligent.csv')
      when 'json'
        puts list.as_json(options[:outfile] || nil)
      else
        raise 'Only CSV and JSON are currently supported.'
      end
    end
  end
end
