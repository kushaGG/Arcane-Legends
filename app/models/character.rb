class Character < ApplicationRecord
	    belongs_to :user 

	    has_many :items

	    validates :nickname, :character_class, presence: true
	    validates :nickname, format: { with: /\A[a-zA-Z]+\z/,
    			  message: "only allows letters" }
    	validates :nickname, length: { in: 3..16 }
    	validates :nickname, uniqueness: true

    	
end