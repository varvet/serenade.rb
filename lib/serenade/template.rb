require "serenade"
require "tilt"

module Serenade
  class Template < Tilt::Template
    def self.default_mime_type
      "application/javascript"
    end

    def prepare
    end

    def evaluate(scope, locals, &block)
      name = scope.logical_path.gsub(/^views\//, "")
      Serenade::Renderer.new(name, data.dup).render
    end
  end
end
