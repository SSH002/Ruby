require_relative 'valera'

class Game
	attr_reader :valera, :day, :hour, :minute, :location, :scene

	def initialize()
		@valera = Valera.new()
		@day = 1		# 1 ~ 14
		@hour = 6		# 0 ~ 23
		@minute = 0		# 0 ~ 59
		@location = 'Spaceport'
		@scene = 'Beginning'
	end

	def save_game(filename)
		# Запись в файл 
		File.open(filename, 'w')
		File.puts(@day)
		File.puts(@hour)
		File.puts(@minute)
		File.puts(@valera.health)
		File.puts(@valera.mana)
		File.puts(@valera.happiens)
		File.puts(@valera.fatigue)
		File.puts(@valera.money)
		File.puts(@location)
		File.puts(@scene)
	end

	def load_game()
		data = []

		# Чтение из файла
		File.open('source', 'r') do |file|
			file.each_line { |x| data.push(x) }
		end

		@day = data[0]
		@hour = data[1]
		@minute = data[2]
		@health = data[3]
		@mana = data[4]
		@happiens = data[5]
		@fatigue = data[6]
		@money = data[7]
		@location = data[8]
		@scene = data[9]
	def

	def menu()
		print "Новая игра >> 1"
		print "Загрузить игру >> 2"
		print "Показать правила игры >> 3"
		print "Выход >> 4"
		print "Ввод >> "
	end

	def game_rules()
		print "+-------------------------------------------------------------------+"
		print "     Игра длится 7 игровых дней. В конце 7 дня игрок должен"
		print " пройти итоговый тест, сдачей которого он покажет усвоение"
		print " учебной  программы. Игрок должен посетить не менее 4 дней "
		print "занятий, чтобы допуститься до сдачи итогового теста.\n\n"
		print "     Также игроку следует следить за состоянием персонажа:"
		print " при неудовлетворительном состоянии Валера не сможет продол-"
		print "жить обучение. Характеристики главного героя должны быть в пределах:\n\n"
		print "     1) Здоровье > 0 (иначе смерть);\n"
		print "     2) Жизнерадостность > -7 (иначе герой уходит в запой);"
		print "     3) Мана > 10 и < 90; При низком значении жизнерадостность стремительно уменьшается, при высоком - происходит алкогольное отравление."
		print "\n\n     При усталости = 100 ГГ засыпает в том месте, где"
		print "он находится. Сон занимает примерно 6-8 часов игрового времени."
	end
end
