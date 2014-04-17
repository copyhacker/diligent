require 'thor'
require 'diligent'

module Diligent
  class CLI < Thor
    desc 'legalese', 'If you can read this, thank a lawyer.'
    def legalese
      puts Diligent::Info.legalese
    end
  end
end
