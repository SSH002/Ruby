require_relative 'lab2.rb'

obj = Lab2.new

maximum = obj.search_maximum
minimum = obj.search_minimum
average = obj.search_average
bsv = obj.search_bsv

print 'Максимум: ', obj.get_maximum, "\n"
print 'Минимум: ', obj.get_minimum, "\n"
print 'Среднее: ', obj.get_average, "\n"
print 'Испр. дисперсия: ', obj.get_bsv, "\n"
