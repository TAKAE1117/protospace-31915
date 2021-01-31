class Prototype < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  
  has_one_attached :image

  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  validates :image, presence: true
end

#メンターさんに教えてもらった雛形
#with_options presence: true do
  #validates :title
  #validates :catch_copy
  #validates :concept
  #validates :image
#end