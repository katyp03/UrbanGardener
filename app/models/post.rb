class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :picture, presence: true
  validates :caption, presence: true
  has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/assets/images/default_pic.svg"
  	validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
end
