require "serenade/template"
require "sprockets"

Sprockets.register_engine(".serenade", Serenade::Template)
