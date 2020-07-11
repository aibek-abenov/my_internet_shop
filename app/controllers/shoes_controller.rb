class ShoesController < ApplicationController

  def index
    @shoes = Shoe.all()
  end

  def category
    @category = Category.find(params[:id])
    @shoes = @category.shoes

    render 'index'
  end

  def show
    @shoe = Shoe.find(params[:id])
  end

  def edit
    @categories = Category.all()
    @shoe = Shoe.find(params[:id])
  end

  def new
    @categories = Category.all()
  end

  def create
    @shoe = Shoe.new(shoe_params)
    @shoe.save

    redirect_to '/shoes/' + @shoe.id.to_s
  end

  def update
    @shoe = Shoe.find(params[:id])
    @shoe.update(shoe_params)

    redirect_to '/shoes/' + @shoe.id.to_s
  end

  private

  def shoe_params
    (params.require(:shoe).permit(:name, :description, :price, :category_id))
  end

end
