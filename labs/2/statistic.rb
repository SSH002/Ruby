require_relative 'csv_reader'

class Statistic
  attr_reader :reader, :maximum, :minimum, :average, :bsv

  def initialize
    @reader = Reader.new
  end

  def search_maximum
    @maximum = @reader.array.max
  end

  def search_minimum
    @minimum = @reader.array.min
  end

  def search_average
    avr = @reader.array.inject { |s, n| s + n } / @reader.array.count
    @average = avr.round(2)
  end

  def search_bsv
    search_average

    sum = @reader.array.inject(0) { |s, n| s + (n - @average)**2 }

    @bsv = (sum / (@reader.array.count - 1)).round(2)
  end
end
