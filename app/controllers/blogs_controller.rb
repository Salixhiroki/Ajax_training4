class BlogsController < ApplicationController
  
  before_action :authenticate_user!
  
  def show
      @blog= Blog.new(blog: "OK",user_id: current_user.id)
      @favorite = Favorite.new 
      @blog.save
    # binding pry
    
  end
end
