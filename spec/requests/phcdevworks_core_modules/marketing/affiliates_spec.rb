 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

module PhcdevworksCoreModules
  RSpec.describe "/marketing/affiliates", type: :request do
    # Marketing::Affiliate. As you add validations to Marketing::Affiliate, be sure to
    # adjust the attributes here as well.
    let(:valid_attributes) {
      skip("Add a hash of attributes valid for your model")
    }

    let(:invalid_attributes) {
      skip("Add a hash of attributes invalid for your model")
    }

    describe "GET /index" do
      it "renders a successful response" do
        Marketing::Affiliate.create! valid_attributes
        get marketing_affiliates_url
        expect(response).to be_successful
      end
    end

    describe "GET /show" do
      it "renders a successful response" do
        affiliate = Marketing::Affiliate.create! valid_attributes
        get marketing_affiliate_url(marketing_affiliate)
        expect(response).to be_successful
      end
    end

    describe "GET /new" do
      it "renders a successful response" do
        get new_marketing_affiliate_url
        expect(response).to be_successful
      end
    end

    describe "GET /edit" do
      it "render a successful response" do
        affiliate = Marketing::Affiliate.create! valid_attributes
        get edit_marketing_affiliate_url(marketing_affiliate)
        expect(response).to be_successful
      end
    end

    describe "POST /create" do
      context "with valid parameters" do
        it "creates a new Marketing::Affiliate" do
          expect {
            post marketing_affiliates_url, params: { marketing_affiliate: valid_attributes }
          }.to change(Marketing::Affiliate, :count).by(1)
        end

        it "redirects to the created marketing_affiliate" do
          post marketing_affiliates_url, params: { marketing_affiliate: valid_attributes }
          expect(response).to redirect_to(marketing_affiliate_url(@marketing_affiliate))
        end
      end

      context "with invalid parameters" do
        it "does not create a new Marketing::Affiliate" do
          expect {
            post marketing_affiliates_url, params: { marketing_affiliate: invalid_attributes }
          }.to change(Marketing::Affiliate, :count).by(0)
        end

        it "renders a successful response (i.e. to display the 'new' template)" do
          post marketing_affiliates_url, params: { marketing_affiliate: invalid_attributes }
          expect(response).to be_successful
        end
      end
    end

    describe "PATCH /update" do
      context "with valid parameters" do
        let(:new_attributes) {
          skip("Add a hash of attributes valid for your model")
        }

        it "updates the requested marketing_affiliate" do
          affiliate = Marketing::Affiliate.create! valid_attributes
          patch marketing_affiliate_url(marketing_affiliate), params: { marketing_affiliate: new_attributes }
          affiliate.reload
          skip("Add assertions for updated state")
        end

        it "redirects to the marketing_affiliate" do
          affiliate = Marketing::Affiliate.create! valid_attributes
          patch marketing_affiliate_url(marketing_affiliate), params: { marketing_affiliate: new_attributes }
          affiliate.reload
          expect(response).to redirect_to(marketing_affiliate_url(affiliate))
        end
      end

      context "with invalid parameters" do
        it "renders a successful response (i.e. to display the 'edit' template)" do
          affiliate = Marketing::Affiliate.create! valid_attributes
          patch marketing_affiliate_url(marketing_affiliate), params: { marketing_affiliate: invalid_attributes }
          expect(response).to be_successful
        end
      end
    end

    describe "DELETE /destroy" do
      it "destroys the requested marketing_affiliate" do
        affiliate = Marketing::Affiliate.create! valid_attributes
        expect {
          delete marketing_affiliate_url(marketing_affiliate)
        }.to change(Marketing::Affiliate, :count).by(-1)
      end

      it "redirects to the marketing_affiliates list" do
        affiliate = Marketing::Affiliate.create! valid_attributes
        delete marketing_affiliate_url(marketing_affiliate)
        expect(response).to redirect_to(marketing_affiliates_url)
      end
    end
  end
end