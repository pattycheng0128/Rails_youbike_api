class YoubikesController < ApplicationController

  def index
    @youbikes = Youbike.all
  end
  
end
