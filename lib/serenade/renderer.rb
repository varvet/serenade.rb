require "execjs"
require "multi_json"

module Serenade
  ASSET_PATH = File.expand_path("../../assets/javascripts", File.dirname(__FILE__))
  SERENADEJS_PATH = File.join(ASSET_PATH, "serenade.js")

  class Renderer
    attr_reader :name, :content

    def initialize(name, content)
      @name = name
      @content = content
    end

    def parse
      context = ExecJS.compile(File.read(SERENADEJS_PATH))
      code = "Serenade.view(#{MultiJson.dump(content)}).parse()"
      context.eval(code)
    end

    def render
      "Serenade.view(#{MultiJson.dump(name)}, #{MultiJson.dump(parse)});"
    end
  end
end
