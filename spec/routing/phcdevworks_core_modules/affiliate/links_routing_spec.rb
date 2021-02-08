require "rails_helper"

module PhcdevworksCoreModules
  RSpec.describe Affiliate::LinksController, type: :routing do
    describe "routing" do
      it "routes to #index" do
        expect(get: "/affiliate/links").to route_to("affiliate/links#index")
      end

      it "routes to #new" do
        expect(get: "/affiliate/links/new").to route_to("affiliate/links#new")
      end

      it "routes to #show" do
        expect(get: "/affiliate/links/1").to route_to("affiliate/links#show", id: "1")
      end

      it "routes to #edit" do
        expect(get: "/affiliate/links/1/edit").to route_to("affiliate/links#edit", id: "1")
      end


      it "routes to #create" do
        expect(post: "/affiliate/links").to route_to("affiliate/links#create")
      end

      it "routes to #update via PUT" do
        expect(put: "/affiliate/links/1").to route_to("affiliate/links#update", id: "1")
      end

      it "routes to #update via PATCH" do
        expect(patch: "/affiliate/links/1").to route_to("affiliate/links#update", id: "1")
      end

      it "routes to #destroy" do
        expect(delete: "/affiliate/links/1").to route_to("affiliate/links#destroy", id: "1")
      end
    end
  end
end
