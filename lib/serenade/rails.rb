require "serenade/sprockets"
require "rails/engine"

module Serenade
  # Creating an empty Rails engine will make Rails add Serenade to
  # the load path. As a result, you can require serenade.js in your
  # assets without having to register the load path manually through
  # Sprockets.
  class Engine < ::Rails::Engine
  end
end
