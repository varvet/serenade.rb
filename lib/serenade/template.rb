require "serenade"
require "tilt"

module Serenade
  # Tilt template for Serenade views. Tilt is used by Sprocket engines.
  class Template < Tilt::Template
    # @return [String] mime type assigned to all Serenade templates
    def self.default_mime_type
      "application/javascript"
    end

    # Tilt forces us to override this, or it will raise a NotImplementedError.
    def prepare
    end

    # Used by tilt to render the template.
    #
    # @param scope
    # @param [Hash] locals
    # @return (see Serenade::Renderer#render)
    def evaluate(scope, locals, &block)
      name = scope.logical_path.gsub(/^views\//, "")
      Serenade::Renderer.new(name, data.dup).render
    end
  end
end
