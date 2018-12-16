class FightEnemy < ApplicationRecord
after_create :recover_params

	belongs_to :enemy
	belongs_to :character

	def dead

		pp enemy.id.to_s+"Dead"
		if(enemy.boss)
			character.update(fight_enemy_id: nil, location_id: nil , num: nil, exp: character.exp+5)
		else
			character.update(fight_enemy_id: nil, exp: character.exp+2)
		end

		if(character.exp >= 25)
			character.update(exp: 0)
			character.update(lvl: character.lvl+1)
			character.update(damage: character.damage+3)
			character.update(hp: character.hp+25)
		end
		#@character.fight_enemy.deat
		delete
	end

	private

	def recover_params
		hp= enemy.hp
	end



end
