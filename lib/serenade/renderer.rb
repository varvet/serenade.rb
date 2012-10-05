require "execjs"
require "multi_json"

module Serenade
  # Absolute path to the directory containing the Serenade assets.
  ASSET_PATH = File.expand_path("../assets/javascripts", File.dirname(__FILE__))

  # Absolute path to the bundled serenade.js.
  SERENADEJS_PATH = File.join(ASSET_PATH, "serenade.js")

  # Serenade::Renderer compiles Serenade views into a Serenade AST.
  class Renderer
    # @return [String] name of the serenade view
    attr_reader :name

    # @return [String] content of the serenade view, before compilation
    attr_reader :content

    def initialize(name, content)
      @name = name
      @content = content
    end

    # Parse the Serenade view in {#content}.
    #
    # @return [Hash] Serenade view AST.
    def parse
      context = ExecJS.compile(File.read(SERENADEJS_PATH))
      code = "Serenade.view(#{MultiJson.dump(content)}).parse()"
      context.eval(code)
    end

    # Parse the Serenade view in {#content} and return a JavaScript string
    # that will register the view with the designated {#name} in Serenade.
    #
    # This is the compiled output of a Serenade view template in Sprockets.
    #
    # @return [String] JavaScript output: `Serenade.view('view_name', view_ast)`
    def render
      "Serenade.view(#{MultiJson.dump(name)}, #{MultiJson.dump(parse)});"
    end
  end
end
