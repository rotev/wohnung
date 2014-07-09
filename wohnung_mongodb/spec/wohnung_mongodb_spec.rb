require 'spec_helper'

describe WohnungMongodb do
  it "should pass" do

  end

  describe WohnungMongodb::Property do
    it "should respond to :all" do
      expect(WohnungMongodb::Property.respond_to?(:all)).to eq(true)
    end
  end
end