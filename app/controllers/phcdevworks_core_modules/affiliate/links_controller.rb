require_dependency "phcdevworks_core_modules/application_controller"

module PhcdevworksCoreModules
    class Affiliate::LinksController < ApplicationController

        # Filters & Security
        #include PhcdevworksCore::PhcpluginsHelper
        before_action :authenticate_user!
        before_action :set_paper_trail_whodunnit
        before_action :set_affiliate_link, only: [:show, :edit, :update, :destroy]

        # GET /affiliate/links
        def index
            @affiliate_links = Affiliate::Link.order('affiliate_link_name ASC')
        end

        # GET /affiliate/links/1
        def show
        end

        # GET /affiliate/links/new
        def new
            @affiliate_link = Affiliate::Link.new
        end

        # GET /affiliate/links/1/edit
        def edit
        end

        # POST /affiliate/links
        def create
            @affiliate_link = Affiliate::Link.new(affiliate_link_params)
            @affiliate_link.user_id = current_user.id
            @affiliate_link.org_id = current_user.org_id
            respond_to do |format|
                if @affiliate_link.save
                    format.html { redirect_to marketing_affiliates_path, :flash => { :success => 'Affilate Link has been Added.' }}
                    format.json { render :show, status: :created, location: @affiliate_link }
                else
                    format.html { render :new }
                    format.json { render json: @affiliate_link.errors, status: :unprocessable_entity }
                end
            end
        end

        # PATCH/PUT /affiliate/links/1
        def update
            respond_to do |format|
                if @affiliate_link.update(marketing_affiliate_params)
                    format.html { redirect_to marketing_affiliates_path, :flash => { :notice => 'Affiliate Link has been Updated.' }}
                    format.json { render :show, status: :ok, location: @affiliate_link }
                else
                    format.html { render :edit }
                    format.json { render json: @affiliate_link.errors, status: :unprocessable_entity }
                end
            end
        end

        # DELETE /affiliate/links/1
        def destroy
            @affiliate_link.destroy
            respond_to do |format|
                format.html { redirect_to marketing_optimizations_path, :flash => { :error => 'Affiliate Link and Post Connections have all been Removed.' }}
                format.json { head :no_content }
            end
        end

        private

        # Common Callbacks
        def set_affiliate_link
            @affiliate_link = Affiliate::Link.find(params[:id])
        end

        # Whitelist
        def affiliate_link_params
            params.require(:affiliate_link).permit(:affiliate_link_name, :affiliate_link_button_text, :affiliate_link_url, :affiliate_link_original_url)
        end

    end
end
