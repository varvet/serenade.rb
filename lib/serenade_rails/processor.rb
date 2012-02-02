require 'sprockets/engines'
require 'tilt'
require 'action_view'
require 'action_view/helpers'
require 'action_view/helpers/javascript_helper'

module Sprockets
  class SerenadeProcessor < Tilt::Template
    include ActionView::Helpers::JavaScriptHelper

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

  register_engine '.serenade', ::Sprockets::SerenadeProcessor
end

