class Tweet < ApplicationRecord
  mount_uploader :voice, AudiofileUploader

  belongs_to :user
  has_many :comments

  validates :voice, presence:true
  validates :title, presence:true

end
