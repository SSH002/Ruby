require_relative 'temperature.rb'

print 'Введите значение \'Температура\': '
temperature = gets

print 'Введите шкалу измерения(C, K, F): '
scale1 = readline
scale1 = scale1[0]

obj = Temperature.new(temperature, scale1)

print 'Введите шкалу, в которую необходимо перевести(C, K, F): '
scale2 = gets
scale2 = scale2[0]
obj.converse(scale2)
print 'Температура в градусах ', obj.scale, ' = ', obj.temperature, "\n"
