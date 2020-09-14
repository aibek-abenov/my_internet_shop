class ShoesController < ApplicationController

  before_action :set_shoe, only: %i[edit update destroy show]
  before_action :authenticate_user! , except: [:index, :show, :category]
  before_action { @pagy_locale = params[:locale] || 'ru' }

  SHOES_PER_PAGE = 8

  def index
    if params[:search] && params[:search] != ""
      @shoes = Shoe.search(params[:search])
    else
      @pagy, @shoes = pagy(Shoe.all, items: 8)
    end
  end

  def category
    @category = Category.find(params[:id])
    @shoes = @category.shoes

    render 'index'
  end

  def show; end

  def edit
   get_all_data
  end

  def new
    @shoe = Shoe.new
    get_all_data
  end

  def create
    @shoe = Shoe.new(shoe_params)
    if @shoe.save
      redirect_to shoe_path(@shoe)
    else
      get_all_data
      render 'new'
    end
  end

  def update
    if @shoe.update(shoe_params)
      redirect_to shoe_path(@shoe)
    else
      get_all_data
      render 'edit'
    end
  end

  def destroy
    @shoe.destroy
    redirect_to root_path
  end

  private

  def set_shoe
    @shoe = Shoe.find(params[:id])
  end

  def get_all_data
    @categories = Category.all()
    @genders = Gender.all()
    @brands = Brand.all()
    @sizes = Size.all()
  end

  def shoe_params
    params.require(:shoe).permit(:name, :description, :price, :category_id, :brand_id, :gender_id, :size_id, :picture)
  end

end
