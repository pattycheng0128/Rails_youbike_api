class YoubikesController < ApplicationController

  def index
    @query = Youbike.all.ransack(params[:q])
    @youbikes = @query.result(distinct: true)
  end
  
end
