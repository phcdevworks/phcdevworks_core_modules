require_dependency "phcdevworks_core_modules/application_controller"

module PhcdevworksCoreModules
    class Marketing::AffiliatesController < ApplicationController

        # Filters & Security
        #include PhcdevworksCore::PhcpluginsHelper
        before_action :authenticate_user!
        before_action :set_paper_trail_whodunnit
        before_action :set_marketing_affiliate, only: [:show, :edit, :update, :destroy]

        # GET /marketing/affiliates
        def index
            @marketing_affiliates = Marketing::Affiliate.order('marketing_affiliate_name ASC')
        end

        # GET /marketing/affiliates/1
        def show
        end

        # GET /marketing/affiliates/new
        def new
            @marketing_affiliate = Marketing::Affiliate.new
        end

        # GET /marketing/affiliates/1/edit
        def edit
        end

        # POST /marketing/affiliates
        def create
            @marketing_affiliate = Marketing::Affiliate.new(marketing_affiliate_params)
            @marketing_affiliate.user_id = current_user.id
            @marketing_affiliate.org_id = current_user.org_id
            respond_to do |format|
                if @marketing_affiliate.save
                    format.html { redirect_to marketing_affiliates_path, :flash => { :success => 'Affilate Link has been Added.' }}
                    format.json { render :show, status: :created, location: @marketing_affiliate }
                else
                    format.html { render :new }
                    format.json { render json: @marketing_affiliate.errors, status: :unprocessable_entity }
                end
            end
        end

        # PATCH/PUT /marketing/affiliates/1
        def update
            respond_to do |format|
                if @marketing_affiliate.update(marketing_affiliate_params)
                    format.html { redirect_to marketing_affiliates_path, :flash => { :notice => 'Affiliate Link has been Updated.' }}
                    format.json { render :show, status: :ok, location: @marketing_affiliate }
                else
                    format.html { render :edit }
                    format.json { render json: @marketing_affiliate.errors, status: :unprocessable_entity }
                end
            end
        end

        # DELETE /marketing/affiliates/1
        def destroy
            @marketing_affiliate.destroy
            respond_to do |format|
                format.html { redirect_to marketing_optimizations_path, :flash => { :error => 'Affiliate Link and Post Connections have all been Removed.' }}
                format.json { head :no_content }
            end
        end

        private

        # Common Callbacks
        def set_marketing_affiliate
            @marketing_affiliate = Marketing::Affiliate.find(params[:id])
        end

        # Whitelist
        def marketing_affiliate_params
            params.require(:marketing_affiliate).permit(:marketing_affiliate_name, :marketing_affiliate_button_text, :marketing_affiliate_url, :marketing_affiliate_original_url)
        end

    end
end
