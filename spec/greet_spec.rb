require 'greet'

RSpec.describe "greet method" do
    it "greets with name" do
        result = greet("Samuel")
        expect(result).to eq "Hello, Samuel!"
    end
end