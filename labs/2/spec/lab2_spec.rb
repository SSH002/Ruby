require './csv_reader.rb'
require './lab2.rb'

RSpec.describe Lab2 do
  describe '.lab2' do
    context 'test_maximum' do
      it { expect(Lab2.new.get_maximum).to eq 35_566 }
    end
    context 'test_minimum' do
      it { expect(Lab2.new.get_minimum).to eq 3 }
    end
    context 'test_average' do
      it { expect(Lab2.new.get_average).to eq 517.55 }
    end
    context 'test_bsv' do
      it { expect(Lab2.new.get_bsv).to eq 3_922_559.76 }
    end
  end
end
