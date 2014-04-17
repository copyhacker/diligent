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
          'description'  => spec.description
        }

        hash
      end
    end
  end
end
