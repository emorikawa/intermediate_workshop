require "spec_helper"

describe ShoutsHelper do
  it "will #link_hash_tags" do
    helper.link_hash_tags("Has #link").should match(%r{search\?search=%23link})
    helper.link_hash_tags("Has #link").should be_html_safe
  end
end
