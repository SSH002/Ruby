class Valera
	attr_reader :health, :mana, :happiens, :fatigue, :money

	def initialize()
		@health = 100		# 0 ~ 100
		@mana = 30			# 0 ~ 100
		@happiens = 5		# -10 ~ 10
		@fatigue = 10		# 0 ~ 100
		@money = 10000		# 0 ~ infinity

		@backpack			# Рюкзак, в нём герой хранит свои вещи
							# Будет представлять из себя массив, значение в каждой ячейке
							# количество оперделённого предмета
	end

	def consume()			# Употребить что-либо
		
	end

	def look_backpack()		# Осмотреть рюкзак
		
	end

	def sale_items()		# Продать/выбросить вещи
		
	end

	def go_training()		# Отправиться на обучение
		
	end

	def play_guitar()		# Игр ать на гитаре
		
	end

	def to_rest()			# Отдыхать
		
	end

	def drink_with_marginals()	# Выпить с сомнительными личностями
		
	end

	def sleep()				# Спать
		
	end

end
