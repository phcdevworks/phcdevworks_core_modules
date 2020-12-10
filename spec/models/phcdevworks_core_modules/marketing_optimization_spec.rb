require 'rails_helper'

module PhcdevworksCoreModules
  RSpec.describe Marketing::Optimization, type: :model do

    subject {described_class.new(marketing_optimization_page_title: "SEO Page Title Test Example") }

    describe "Validations" do

      it "is valid with valid attributes" do
        expect(subject).to be_valid
      end

      it "is not valid without a marketing_optimization_page_title" do
        subject.marketing_optimization_page_title = nil
        expect(subject).to_not be_valid
      end

    end

    describe "Associations" do
      it { should belong_to(PhcdevworksAccounts::User).without_validating_presence }
    end

  end
end
