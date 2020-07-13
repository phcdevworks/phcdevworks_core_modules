require_dependency "phcdevworks_core_modules/application_controller"

module PhcdevworksCoreModules
  class Post::CategoriesController < ApplicationController
    
    # Filters & Security
    #include PhcdevworksCore::PhcpluginsHelper
    before_action :authenticate_user!
    before_action :set_paper_trail_whodunnit
    before_action :set_post_category, only: [:show, :edit, :update, :destroy]

    # GET /post/categories
    def index
      @post_categories = Post::Category.order('post_category_name ASC')
    end

    # GET /post/categories/1
    def show
    end

    # GET /post/categories/new
    def new
      @post_category = Post::Category.new
    end

    # GET /post/categories/1/edit
    def edit
    end

    # POST /post/categories
    def create
      @post_category = Post::Category.new(post_category_params)
      @post_category.user_id = current_user.id
      @post_category.org_id = current_user.org_id
      respond_to do |format|
        if @post_category.save
          format.html { redirect_to post_categories_path, :flash => { :success => 'Category has been Added.' }}
          format.json { render :show, status: :created, location: @post_category }
        else
          format.html { render :new }
          format.json { render json: @post_category.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /post/categories/1
    def update
      respond_to do |format|
        if @post_category.update(post_category_params)
          format.html { redirect_to post_categories_path, :flash => { :notice => 'Category has been Updated.' }}
          format.json { render :show, status: :ok, location: @post_category }
        else
          format.html { render :edit }
          format.json { render json: @post_category.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /post/categories/1
    def destroy
      @post_category.destroy
      respond_to do |format|
        format.html { redirect_to post_categories_path, :flash => { :error => 'Categories and Category Connections have all been Removed.' }}
        format.json { head :no_content }
      end
    end

    private

    # Common Callbacks
    def set_post_category
      @post_category = Post::Category.find(params[:id])
    end

    # Whitelist
    def post_category_params
      params.require(:post_category).permit(:post_category_name, :slug, :optimization_id, :user_id, :org_id)
    end

  end
end
