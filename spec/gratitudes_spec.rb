require 'gratitudes'

RSpec.describe Gratitudes do
    it "Outputs a comma-separated list of gratitudes" do
    grateful = Gratitudes.new
    grateful.add("The weather")
    grateful.add("family")
    grateful.add("health")
    result = grateful.format
    expect(result).to eq "Be grateful for: The weather, family, health"
    end

    it "When no gratitudes are added, just get prompt" do
        grateful = Gratitudes.new
        result = grateful.format
        expect(result).to eq "Be grateful for: "
        end
end