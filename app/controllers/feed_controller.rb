class FeedController < ApplicationController

  def index
    @feed=Feed.order("created_at desc")
    render :template => 'feed/index.atom.builder', :layout => false
  end

end
