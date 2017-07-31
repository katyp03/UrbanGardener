class Plant < ApplicationRecord
	# enum size: [:Small, :Medium, :Large]
	has_many :user_plants
	has_many :users, through: :user_plants
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/assets/default_pic.svg"
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  	validates :size, presence: true, numericality: { in: 0..2 }

  	def to_word
  		if (size === 0)
  			"Small"
  		elsif (size === 1)
  			"Medium"
  		elsif (size === 2)
  			"Large"
			else
				"WE'RE SORRY, SOMETHING TERRIBLE WENT WRONG!!! WE DON'T HAVE THAT INFO!"
  		end
  	end

    def to_eat
      if (edible == true)
        "Edible"
      elsif (edible == false)
        "Decorative"
      else
        "WE'RE SORRY, SOMETHING TERRIBLE WENT WRONG!!! WE DON'T HAVE THAT INFO!"
      end
    end

    def is_herb
      if (herb == true)
        "Yes, this is an herb"
      elsif (herb == false)
        "No, this is not an herb"
      else
        "WE'RE SORRY, SOMETHING TERRIBLE WENT WRONG!!! WE DON'T HAVE THAT INFO!"
      end
    end

    def is_fruitveg
      if (fruitveg == true)
        "Yes, this is a fruit or vegetable"
      elsif (fruitveg == false)
        "No, this is not a fruit or vegetable"
      else
        "WE'RE SORRY, SOMETHING TERRIBLE WENT WRONG!!! WE DON'T HAVE THAT INFO!"
      end
    end

end
