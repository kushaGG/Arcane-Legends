class Character < ApplicationRecord
	belongs_to :user
	has_many :items
	has_one :location
	has_one :fight_enemy



	validates :nickname, :character_class, presence: true
	validates :nickname, uniqueness: true
	validates :nickname, format: { with: /\A[a-zA-Z]+\z/,
	    		message: "only allows letters" }
	validates :nickname, length: { in: 3..16 }
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  def set_avatar
    if self.avatar
      "/assets/#{self.character_class}.png"
    end
  end
end
