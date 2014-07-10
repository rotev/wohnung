require_relative 'spec_helper'

describe "persister" do

  describe "POST /wohnungs" do
    it "should persist" do
      params = { url: "http://google.com" }
      expect(WohnungMongodb::Property).to receive(:create).with(params)
      post "/wohnungs", params
      last_response.status.should eq(302)
    end
  end

end