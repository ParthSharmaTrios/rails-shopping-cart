class TempordersController < ApplicationController

  def create



    usr = User.find(current_user.id)



    @temporder = usr.temporders.new(params.require(:temporder).permit(:product_id, :session_id))

    @temporder.save!


  end



  def index

    @cart = Temporder.where(:session_id => session[:session_id])


  end



  def destroy

    Temporder.find(params[:id]).delete


  end


end
