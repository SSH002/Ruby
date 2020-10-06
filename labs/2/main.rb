require_relative 'statistic'

obj = Statistic.new

print 'Максимум: ', obj.search_maximum, "\n"
print 'Минимум: ', obj.search_minimum, "\n"
print 'Среднее: ', obj.search_average, "\n"
print 'Испр. дисперсия: ', obj.search_bsv, "\n"
