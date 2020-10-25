	def cp_str(string, i)
		
	end

	data = []

	# Чтение из фа йла
	File.open('source', 'r') do |file|
		file.each_line { |x| data.push(x) }
	end

	items = []
	var1 = data[0]
	var2 = data[1]
	var3 = data[2]
	var4 = data[3]
	var5 = data[4]

	j = 0
	i = 0
	k = 0
	str = ""
	
	while(data[5][i] != ' ')
		str = str + data[5][i]
		i = i + 1
	end

	var7 = data[6]
	print '1|', var1, ' 3| ', var3, ' 2| ', var2, ' 4| ', var4, ' 7| ', var7, ' 55| ', str, "\n"

	# Запись в файл 
	File.open('output', 'w') do |file|
		data.each { |x| file.puts(x) }
	end
