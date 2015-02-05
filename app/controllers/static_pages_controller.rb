
class StaticPagesController < ApplicationController
  def home
     
     @q= Listing.ransack(params[:q])
     @listings = @q.result.includes(:club,:sport)
    if signed_in?
      @micropost  = current_user.microposts.build
      @slotpost  = current_user.slotposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def slotsharing
    if signed_in?
      #@micropost  = current_user.microposts.build
      @slotpost  = current_user.slotposts.build
      @slotfeed_items = current_user.slotfeed.paginate(page: params[:page])
    end
  end

  def microblog
    if signed_in?
      @micropost  = current_user.microposts.build
      #@slotpost  = current_user.slotposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end



  def help
  end

  def about 
  end

  def contact
  end	
end
