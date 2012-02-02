require 'execjs'
require 'active_support/json'

module SerenadeRails
  SERENADE_PATH = File.expand_path('../assets/javascripts/serenade.js', File.dirname(__FILE__))

  class Template
    attr_reader :name, :content

    def initialize(name, content)
      @name = name
      @content = content
    end

    def parse
      context = ExecJS.compile(File.read(SERENADE_PATH))
      code = "Serenade.view(#{content.to_json}).parse()"
      context.eval(code)
    end

    def render
      "Serenade.view(#{name.to_json}, #{parse.to_json});"
    end
  end
end
