require "serenade_rails/template"

describe SerenadeRails::Template do
  describe "#parse" do
    it "returns a parsed Sereande template" do
      result = SerenadeRails::Template.new("foo", 'h1 "Hello world"').parse
      result["name"].should == "h1"
      result["children"][0]["type"].should == "text"
      result["children"][0]["value"].should == "Hello world"
    end
  end
end
