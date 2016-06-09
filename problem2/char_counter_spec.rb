require './char_counter'

RSpec.describe CharCounter do
  let(:char_counter) { CharCounter.new }

  context "with valid input" do
    it "Returns the number of characters" do
      expect(char_counter.count_chars("conure")).to eq(6)
    end

    it "strips the whitespace" do
      expect(char_counter.count_chars("   conure   ")).to eq(6)
    end
  end

  context "with invalid input" do
    context "with an empty string" do
      it "raises an argument error" do
        expect { char_counter.count_chars("")  }.to raise_error(ArgumentError)
      end
    end

    context "with a non string argument" do
      it "raises an argument error" do
        expect { char_counter.count_chars(123) }.to raise_error(ArgumentError)
      end
    end
  end
end
