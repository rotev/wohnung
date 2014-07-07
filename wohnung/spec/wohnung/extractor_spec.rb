require "wohnung/extractor"

module Wohnung
  url = "http://example.com"

  describe Extractor do
    
    describe "#extract" do

      it "should make a request to the extractor and return the result." do
        result = double(:result)
        expect(Utils).to receive(:get).with(Wohnung::Extractor::EXTRACTOR_URL, { url: url }).and_return result
        expect(Extractor.extract(url)).to eq(result)
      end

    end
  end
end