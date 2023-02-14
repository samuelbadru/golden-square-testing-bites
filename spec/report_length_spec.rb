require 'report_length'

RSpec.describe "check report length method" do
    it "checks length of Makers" do
        result = report_length("Makers")
        expect(result).to eq "This string was 6 characters long."
    end

    it "checks length of Makers" do
        result = report_length("")
        expect(result).to eq "This string was 0 characters long."
    end
end