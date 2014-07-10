require_relative 'spec_helper'

describe "extractor" do

  context "without url" do
    it "should fail" do
      get "/"
      last_response.status.should eq(404)
    end
  end

end