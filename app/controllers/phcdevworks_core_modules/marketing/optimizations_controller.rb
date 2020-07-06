require_dependency "phcdevworks_core_modules/application_controller"

module PhcdevworksCoreModules
  class Marketing::OptimizationsController < ApplicationController

    # Filters & Security
    #include PhcdevworksCore::PhcpluginsHelper
    before_action :authenticate_user!
    before_action :set_paper_trail_whodunnit
    before_action :set_marketing_optimization, only: [:show, :edit, :update, :destroy]

    # GET /marketing/optimizations
    def index
      @marketing_optimizations = Marketing::Optimization.order('seo_title ASC')
    end

    # GET /marketing/optimizations/1
    def show
    end

    # GET /marketing/optimizations/new
    def new
    @marketing_optimization = Marketing::Optimization.new
    end

    # GET /marketing/optimizations/1/edit
    def edit
    end

    # POST /marketing/optimizations
    def create
      @marketing_optimization = Marketing::Optimization.new(marketing_optimization_params)
      @marketing_optimization.user_id = current_user.id
      @marketing_optimization.org_id = current_user.org_id
      respond_to do |format|
        if @marketing_optimization.save
          format.html { redirect_to marketing_optimizations_path, :flash => { :success => 'SEO Attributes has been Added.' }}
          format.json { render :show, status: :created, location: @marketing_optimization }
        else
          format.html { render :new }
          format.json { render json: @marketing_optimization.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /marketing/optimizations/1
    def update
      respond_to do |format|
        if @marketing_optimization.update(marketing_optimization_params)
          format.html { redirect_to marketing_optimizations_path, :flash => { :notice => 'Tutorial has been Updated.' }}
          format.json { render :show, status: :ok, location: @marketing_optimization }
        else
          format.html { render :edit }
          format.json { render json: @marketing_optimization.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /marketing/optimizations/1
    def destroy
      @marketing_optimization.destroy
      respond_to do |format|
        format.html { redirect_to marketing_optimizations_path, :flash => { :error => 'SEO Attributes and Post Connections have all been Removed.' }}
        format.json { head :no_content }
      end
    end

    private

    # Common Callbacks
    def set_marketing_optimization
      @marketing_optimization = Marketing::Optimization.find(params[:id])
    end

    # Whitelist
    def marketing_optimization_params
      params.require(:marketing_optimization).permit(:seo_title, :seo_description, :seo_open_graph_post_type, :seo_open_graph_url, :seo_open_graph_title, :seo_open_graph_description, :seo_open_graph_image, :seo_twitter_post_type, :seo_twitter_url, :seo_twitter_title, :seo_twitter_description, :seo_twitter_image, :slug, :user_id, :org_id)
    end

  end
end
