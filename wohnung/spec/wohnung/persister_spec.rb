require "wohnung/persister"

module Wohnung

  describe Persister do
    
    describe "#persist" do

      it "should make a request to the persister." do
        data = double(:data)
        result = double(:result)
        expect(Utils).to receive(:post).with(Wohnung::Persister::PERSISTER_URL, data).and_return result
        expect(Persister.persist(data)).to eq(result)
      end

    end
  end
end