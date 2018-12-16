class Enemy < ApplicationRecord
after_create :find_num 

belongs_to :location
has_many :enemies

private 

def find_num
	update(num: location.enemies.count())
	update(boss: true)
	location.enemies.each{|enemy|
		if(enemy.boss && enemy.id != id)
			enemy.update(boss: false)
		end
	}
end
end
