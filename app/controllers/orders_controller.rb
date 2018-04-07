class OrdersController < ApplicationController



  def create

    usr = User.find(current_user.id)
    puts(params)
    #unlocked_params = ActiveSupport::HashWithIndifferentAccess.new(params)

    @orders = usr.orders.new(params.require(:order).permit(:product_id, :total))

    @orders.save!



  end
end
