class BidsController < ApplicationController

  def create
    @bid = Bid.new(bid_params)
    if @bid.save
      redirect_to items_path, notice: 'Your bid has been recorded!'
    else
      @item = @bid.item
      redirect_to items_path, alert: 'Your bid did not go through!' 
    end
    end


    private
      def bid_params
        params.require(:bid).permit(:amount, :item_id)
      end
end

