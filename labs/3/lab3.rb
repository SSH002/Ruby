class Lab3
  attr_reader :reader, :maximum, :minimum, :average, :bsv

  def initialize; end

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
