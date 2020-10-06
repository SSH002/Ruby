require '../csv_reader'
require '../statistic'

RSpec.describe Statistic do
  describe '.statistic' do
    context 'test_maximum' do
      it { expect(Statistic.new.search_maximum).to eq 35_566 }
    end
    context 'test_minimum' do
      it { expect(Statistic.new.search_minimum).to eq 3 }
    end
    context 'test_average' do
      it { expect(Statistic.new.search_average).to eq 517.55 }
    end
    context 'test_bsv' do
      it { expect(Statistic.new.search_bsv).to eq 3_922_559.76 }
    end
  end
end
