require 'sprockets'
require 'sprockets/engines'
require 'tilt'

module SerenadeRails
  class Processor < Tilt::Template
    def self.default_mime_type
      'application/javascript'
    end

    def prepare
    end

    def evaluate(scope, locals, &block)
      name = scope.logical_path.gsub(/^views\//, "")
      SerenadeRails::Template.new(name, data.dup).render
    end
  end
end

Sprockets.register_engine '.serenade', SerenadeRails::Processor
