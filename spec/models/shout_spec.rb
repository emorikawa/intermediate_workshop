require 'spec_helper'

describe Shout do
  it "returns .current shouts in reverse chronological order" do
    older_shout = create(:shout)
    newer_shout = create(:shout)
    Shout.current.should == [newer_shout, older_shout]
  end

  it "can .search through the shouts" do
    matched_shouts = [
      create(:text_shout, body: "Wombat").shout,
      create(:text_shout, body: "Wally Wombat").shout,
    ]
    unmatched_shout = create(:text_shout, body: "Walrus").shout
    Shout.search("wombat").should =~ matched_shouts
  end
end
