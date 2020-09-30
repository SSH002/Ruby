require './csv_reader.rb'
require './lab2.rb'

RSpec.describe Lab2 do
  describe '#Lab2' do
    it 'test_maximum' do
      expect(Lab2.new.get_maximum).to eq 35_566
    end
    it 'test_minimum' do
      expect(Lab2.new.get_minimum).to eq 3
    end
    it 'test_average' do
      expect(Lab2.new.get_average).to eq 517.55
    end
    it 'test_bsv' do
      expect(Lab2.new.get_bsv).to eq 3_922_559.76
    end
  end
end
