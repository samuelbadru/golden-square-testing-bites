require 'counter'

RSpec.describe Counter do
    it "culminatively adds the numbers the user inputs" do
        counter = Counter.new
        counter.add(5)
        counter.add(27)
        result = counter.report()
        expect(result).to eq "Counted to 32 so far."
    end

    it "counter is 0 when nothing is added" do
        counter = Counter.new
        result = counter.report()
        expect(result).to eq "Counted to 0 so far."
    end
end