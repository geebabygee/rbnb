class Event < ApplicationRecord
  has_many :videos, dependent: :destroy
  has_many :user_videos, dependent: :destroy
  has_many :likes, dependent: :destroy

  geocoded_by :adress
  after_validation :geocode, if: :will_save_change_to_address?
end
