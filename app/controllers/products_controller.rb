class ProductsController < ApplicationController



  def show
    puts "the id is"
    puts params[:product_id]
    @Product = Product.find params[:id]
  end
end
