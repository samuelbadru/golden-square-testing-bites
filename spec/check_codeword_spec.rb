require 'check_codeword'

RSpec.describe "check codeword method" do
    it "checks if codeword is horse" do
        result = check_codeword("horse")
        expect(result).to eq "Correct! Come in."
    end

    it "checks if codeword starts with h and ends with e" do
        result = check_codeword("hose")
        expect(result).to eq "Close, but nope."
    end

    it "rejects words that aren't horse or aren't close" do
        result = check_codeword("lemon")
        expect(result).to eq "WRONG!"
    end
end