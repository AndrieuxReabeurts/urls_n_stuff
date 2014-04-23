require 'spec_helper'

describe Url do
  it "should make a Url" do
    url = Url.new(short_url: "a teeny weeny url", long_url: "a long ass url")
    expect(url.class).to eq(Url)
  end

  it "should make a Url with a short Url" do
    url = Url.new(short_url: "a teeny weeny url", long_url: "a long ass url")
    expect(url.short_url.class).to eq(String)
  end

   it "should make a Url with a long Url" do
    url = Url.new(short_url: "a teeny weeny url", long_url: "a long ass url")
    expect(url.long_url.class).to eq(String)
  end
end