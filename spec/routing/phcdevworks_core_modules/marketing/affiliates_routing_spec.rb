require "rails_helper"

module PhcdevworksCoreModules
  RSpec.describe Marketing::AffiliatesController, type: :routing do
    describe "routing" do
      it "routes to #index" do
        expect(get: "/marketing/affiliates").to route_to("marketing/affiliates#index")
      end

      it "routes to #new" do
        expect(get: "/marketing/affiliates/new").to route_to("marketing/affiliates#new")
      end

      it "routes to #show" do
        expect(get: "/marketing/affiliates/1").to route_to("marketing/affiliates#show", id: "1")
      end

      it "routes to #edit" do
        expect(get: "/marketing/affiliates/1/edit").to route_to("marketing/affiliates#edit", id: "1")
      end


      it "routes to #create" do
        expect(post: "/marketing/affiliates").to route_to("marketing/affiliates#create")
      end

      it "routes to #update via PUT" do
        expect(put: "/marketing/affiliates/1").to route_to("marketing/affiliates#update", id: "1")
      end

      it "routes to #update via PATCH" do
        expect(patch: "/marketing/affiliates/1").to route_to("marketing/affiliates#update", id: "1")
      end

      it "routes to #destroy" do
        expect(delete: "/marketing/affiliates/1").to route_to("marketing/affiliates#destroy", id: "1")
      end
    end
  end
end
