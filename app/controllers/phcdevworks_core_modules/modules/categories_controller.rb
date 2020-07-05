require_dependency "phcdevworks_core_modules/application_controller"

module PhcdevworksCoreModules
  class Modules::CategoriesController < ApplicationController

    # Filters & Security
    #include PhcdevworksCore::PhcpluginsHelper
    before_action :authenticate_user!
    before_action :set_paper_trail_whodunnit
    before_action :set_modules_category, only: [:show, :edit, :update, :destroy]

    # GET /modules/categories
    def index
      @modules_categories = Modules::Category.order('category_name ASC')
    end

    # GET /modules/categories/1
    def show
    end

    # GET /modules/categories/new
    def new
      @modules_category = Modules::Category.new
    end

    # GET /modules/categories/1/edit
    def edit
    end

    # POST /modules/categories
    def create
      @modules_category = Modules::Category.new(modules_category_params)
      @modules_category.user_id = current_user.id
      @modules_category.org_id = current_user.org_id
      respond_to do |format|
        if @modules_category.save
          format.html { redirect_to modules_categories_path, :flash => { :success => 'Category has been Added.' }}
          format.json { render :show, status: :created, location: @modules_category }
        else
          format.html { render :new }
          format.json { render json: @modules_category.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /modules/categories/1
    def update
      respond_to do |format|
        if @modules_category.update(modules_category_params)
          format.html { redirect_to modules_categories_path, :flash => { :notice => 'Category has been Updated.' }}
          format.json { render :show, status: :ok, location: @modules_category }
        else
          format.html { render :edit }
          format.json { render json: @modules_category.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /modules/categories/1
    def destroy
      @modules_category.destroy
      respond_to do |format|
        format.html { redirect_to modules_categories_path, :flash => { :error => 'Categories and Category Connections have all been Removed.' }}
        format.json { head :no_content }
      end
    end

    private

    # Common Callbacks
    def set_modules_category
      @modules_category = Modules::Category.find(params[:id])
    end

    # Whitelist
    def modules_category_params
      params.require(:modules_category).permit(:category_name, :seo_twitter_image, :seo_open_graph_image)
    end

  end
end
