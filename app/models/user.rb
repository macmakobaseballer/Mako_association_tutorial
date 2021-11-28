class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :tweets
  has_many :favorites
  has_many :comments
  has_many :favorite_tweets, through: :favorites, source: :tweet
  has_many :comment_tweets, through: :comments, sourc: :tweet
  
end
