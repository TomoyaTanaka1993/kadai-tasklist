#class ToppagesController < ApplicationController
  def index
    if logged_in?
      @micropost = current_user.tasks.build  # form_with 用
      @microposts = current_user.tasks.order(id: :desc).page(params[:page])
    end
  end
#end
