require 'csv'

class Reader
  attr_reader :data, :rows, :columns

  def initialize
    @data = CSV.read('data-20161226-structure-20161225.csv')

    @rows = data.length
    @columns = data[0].length
  end
end
