class FightEnemy < ApplicationRecord

	belongs_to :enemy
	belongs_to :character

	def fight
		enemy.update(hp: enemy.hp-character.damage)
	end

	def dead
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

		if (enemy.lvl == 1)
			if (enemy.boss)
				enemy.update(hp: 100)
			else
				enemy.update(hp: 50)
			end
		end

		if (enemy.lvl == 5)
			if (enemy.boss)
				enemy.update(hp: 200)
			else
				enemy.update(hp: 100)
			end
		end

		if (enemy.lvl == 10)
			if (enemy.boss)
				enemy.update(hp: 400)
			else
				enemy.update(hp: 200)
			end
		end
		
		#@character.fight_enemy.deat
		delete
	end

end
