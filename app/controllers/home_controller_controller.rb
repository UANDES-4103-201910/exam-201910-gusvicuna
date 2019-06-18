class HomeControllerController < ApplicationController
  def index
    @products= Product.all
  end
end
