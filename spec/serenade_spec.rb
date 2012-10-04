require "serenade"

describe Serenade do
  specify { defined?(Serenade::VERSION).should_not be_nil }

  describe Serenade::Renderer do
    describe "#parse" do
      it "returns a parsed Sereande template" do
        result = Serenade::Renderer.new("foo", 'h1 "Hello world"').parse
        result["name"].should eq "h1"
        result["children"][0]["type"].should eq "text"
        result["children"][0]["value"].should eq "Hello world"
      end
    end
  end
end
