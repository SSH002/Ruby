require_relative 'csv_reader.rb'

class Lab2
  attr_reader :reader, :maximum, :minimum, :average, :bsv

  def initialize
    @reader = Reader.new
    @maximum = search_maximum
    @minimum = search_minimum
    @average = search_average
    @bsv = search_bsv
  end

  def search_maximum
    max = 0

    (1...@reader.rows).each do |i|
      # Проверка, является ли значение пустым
      next if @reader.data[i][0].instance_of? NilClass

      max = @reader.data[i][0].to_f if @reader.data[i][0].to_f > max
    end

    max
  end

  def search_minimum
    min = 1_000_000

    (1...@reader.rows).each do |i|
      # Проверка, является ли значение пустым
      next if @reader.data[i][0].instance_of? NilClass

      min = @reader.data[i][0].to_f if @reader.data[i][0].to_f < min
    end

    min
  end

  def search_average
    avr_val = 0
    count = 0

    (1...@reader.rows).each do |i|
      # Проверка, является ли значение пустым
      next if @reader.data[i][0].instance_of? NilClass

      avr_val += @reader.data[i][0].to_f
      count += 1
    end

    (avr_val / count).round(2)
  end

  def search_bsv
    count = 0
    sum = 0

    (1...@reader.rows).each do |i|
      # Проверка, является ли значение пустым
      next if @reader.data[i][0].instance_of? NilClass

      sum += (@reader.data[i][0].to_f - @average)**2
      count += 1
    end

    (sum / (count - 1)).round(2)
  end

  def get_maximum
    @maximum
  end

  def get_minimum
    @minimum
  end

  def get_average
    @average
  end

  def get_bsv
    @bsv
  end
end
