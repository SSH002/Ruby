require_relative 'csv_reader.rb'

class Statistic
  attr_reader :reader, :maximum, :minimum, :average, :bsv

  def initialize
    @reader = Reader.new
  end

  def search_maximum
    @maximum = 0

    (1...@reader.rows).each do |i|
      @maximum = @reader.data[i][0].to_f if @reader.data[i][0].to_f > @maximum
    end

    @maximum
  end

  def search_minimum
    @minimum = 1_000_000

    (1...@reader.rows).each do |i|
      @minimum = @reader.data[i][0].to_f if @reader.data[i][0].to_f < @minimum
    end

    @minimum
  end

  def search_average
    @average = 0
    count = 0

    (1...@reader.rows).each do |i|
      @average += @reader.data[i][0].to_f
      count += 1
    end

    @average = (@average / count).round(2)
  end

  def search_bsv
    search_average
    count = -1
    sum = 0

    (1...@reader.rows).each do |i|
      sum += (@reader.data[i][0].to_f - @average)**2
      count += 1
    end

    @bsv = (sum / count).round(2)
  end
end
