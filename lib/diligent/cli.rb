require 'thor'
require 'diligent'

module Diligent
  class CLI < Thor
    desc 'legalese', 'If you can read this, thank a lawyer.'
    def legalese
      puts Diligent::Info.legalese
    end

    desc 'list', 'List of gem information. JSON by default, or pass format option.'
    def list
      puts Diligent::List.load
    end
  end
end
