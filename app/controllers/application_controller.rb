class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  helper_method :all


  def itemsInCart

    return @totalItemsInCart = Temporder.where(:session_id => session[:session_id]).count

  end


  def foo

   return session[:session_id]
  end


end
