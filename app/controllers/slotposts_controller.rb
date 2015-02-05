
class SlotpostsController < ApplicationController
  before_action :signed_in_user


  def index
  end
  
  def create
    @slotpost = current_user.slotposts.build(slotpost_params)
    if @slotpost.save
      flash[:success] = "Slotpost created!"
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/slotsharing'
    end
  end


  def destroy
    @slotpost.destroy
    redirect_to root_url
  end

  private

    def slotpost_params
      params.require(:slotpost).permit(:ground_name, 
      								   :sport,
      								   :vacancy, 
      								   :date, 
      								   :slot_start_time,
      								   :slot_end_time, 
      								   :content )
    end

    def correct_user
    @slotpost = current_user.slotposts.find_by(id: params[:id])
    redirect_to root_url if @slotpost.nil?
  end
end