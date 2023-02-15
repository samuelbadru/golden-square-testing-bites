require 'present'

RSpec.describe Present do
    context "when content has already been set" do

        present = Present.new
        present.wrap("Laptop")

        it "fails the wrap method" do
            expect { present.wrap("Basketball") }.to raise_error "A contents has already been wrapped."
        end
        
        it "passes the unwrap method" do
            expect(present.unwrap).to eq "Laptop"
        end
    end

    context "when no content has been set" do
        
        present = Present.new

        it "fails the unwrap method" do
            expect{ present.unwrap }.to raise_error "No contents have been wrapped."
        end

        it "passes the wrap method" do
            expect(present.wrap("Basketball")).to eq "Basketball"
        end
    end




end