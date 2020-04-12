class Blog < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
  
  def favorite?(blog, user)
    blog.favorites.find_by(user_id: user.id)
    # binding pry
  end
  
end
