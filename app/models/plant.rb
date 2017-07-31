class Plant < ApplicationRecord
	# enum size: [:Small, :Medium, :Large]
	has_many :user_plants
	has_many :users, through: :user_plants
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/assets/default_pic.svg"
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  	validates :size, presence: true, numericality: { in: 0..2 }

  	def to_word
  		if (:size== 0)
  			puts "Small"
  		elsif (:size== 1)
  			puts "Medium"
  		elsif (:size== 2)
  			puts "Large"
  		end
  	end

end
