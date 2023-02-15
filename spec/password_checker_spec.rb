require 'password_checker'

RSpec.describe PasswordChecker do

    password = PasswordChecker.new

    it "fails the check method when password is too short" do 
        expect{ password.check("lemon") }.to raise_error "Invalid password, must be 8+ characters."
    end

    it "check method returns true when password is 8 characters or more" do
        expect(password.check("lemonade")).to eq true
    end

end