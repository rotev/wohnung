require 'spec_helper'

describe WohnungMongodb do
  it "should pass" do

  end

  describe WohnungMongodb::Property do
    it "should respond to :all" do
      expect(WohnungMongodb::Property.respond_to?(:all)).to eq(true)
    end
  end

  describe WohnungMongodb::FOO do
    it "should be Bar" do
      expect(WohnungMongodb::FOO).to eq("Bar")
    end
  end
end