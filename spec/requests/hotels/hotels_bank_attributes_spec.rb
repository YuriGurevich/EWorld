require 'spec_helper'

describe "Hotels::BankAttributes" do
  describe "GET /hotels_bank_attributes" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get hotels_bank_attributes_path
      response.status.should be(200)
    end
  end
end
