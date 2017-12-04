require "serenade/template"
require "sprockets"

if Sprockets.respond_to?(:register_transformer)
  Sprockets.register_mime_type "text/x-serenade", extensions: [".serenade"]
  Sprockets.register_preprocessor "text/x-serenade", Serenade::Template
elsif Sprockets.respond_to?(:register_engine)
  args = [".serenade", Serenade::Template]
  args << { silence_deprecation: true } if Sprockets::VERSION.start_with?("3")
  Sprockets.register_engine(*args)
end
