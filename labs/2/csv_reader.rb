require 'csv'

class csv_reader
  attr_reader :data, :rows, :columns, :array

  def initialize
    @data = CSV.read('data-20161226-structure-20161225.csv')

    @rows = data.length
    @columns = data[0].length

    @array = []

    (1...rows).each do |i|
      @array[i - 1] = data[i][0].to_f
    end
  end
end
