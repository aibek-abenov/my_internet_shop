class SizeController < ApplicationController
  def index
    @sizes = Size.all()
  end
end
