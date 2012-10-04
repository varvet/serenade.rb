require "serenade/sprockets"

describe "Serenade sprockets integration" do
  it "registers the .serenade template engine" do
    Sprockets.engines[".serenade"].should eq Serenade::Template
  end

  it "allows you to require serenade in your assets" do
    env = Sprockets::Environment.new
    env.append_path Serenade::ASSET_PATH

    File.exists?(env.resolve "serenade").should be_true
  end
end
