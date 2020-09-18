class BrandsController < ApplicationController
  before_action :set_brand, only: %i[edit update destroy]
  before_action :authenticate_user!

  def index
    @brands = Brand.all
  end

  def new
    @brand = Brand.new
  end

  def create
    # binding.pry
    @brand = Brand.new(brand_params)
    if @brand.save
      redirect_to brands_path
    else
      render 'new'
    end
  end

  def edit; end

  def update
    if @brand.update(brand_params)
      redirect_to brands_path
    else
      render 'edit'
    end
  end

  def destroy
    @brand.destroy
    redirect_to brands_path
  end

  private

  def set_brand
    @brand = Brand.find(params[:id])
  end

  def brand_params
    params.require(:brand).permit(:name, :description)
  end
end
