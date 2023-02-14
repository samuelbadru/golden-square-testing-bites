require 'string_builder'

RSpec.describe StringBuilder do
    it "outputs the correct length of the string stored" do
        string = StringBuilder.new
        string.add("Hello, ")
        result = string.size
        expect(result).to eq 7
    end

    it "outputs the correct string after multiple add methods" do
        string = StringBuilder.new
        string.add("Hello, ")
        string.add("World")
        string.add("!")
        result = string.output
        expect(result).to eq "Hello, World!"
    end

    it "outputs empty string when no add methods used" do
        string = StringBuilder.new
        result = string.output
        expect(result).to eq ""
    end

    it "size method returns 0 when no add methods used" do
        string = StringBuilder.new
        result = string.size
        expect(result).to eq 0
    end
end
