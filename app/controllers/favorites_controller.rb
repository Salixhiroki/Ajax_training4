class FavoritesController < ApplicationController
  
  before_action :authenticate_user!
  
  def create
    @favorite = Favorite.new
    @favorite = current_user.favorites.create(blog_id: params[:blog_id])
    @blog = Blog.find(params[:blog_id])
    
    @favorite.user_id=current_user.id
    @favorite.blog_id=@blog.id
    
    # binding pry
    
    
    if @favorite.save
      # binding pry
      render 'index.js.erb' 
    else
      render root_path
    end
  end
  
  def destroy
    @favorite = current_user.favorites.find_by(blog_id: params[:id].to_i).destroy
    # binding pry
    @blog = Blog.find(params[:id])
    render "index.js.erb"
  end
  
end
