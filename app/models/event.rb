class Event < ApplicationRecord
  has_many :videos, dependent: :destroy
  has_many :user_videos, dependent: :destroy
  has_many :likes, dependent: :destroy
end
