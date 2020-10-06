require './temperature'

RSpec.describe Temperature do
  describe '.temperature' do
    context 'from_C_to_F' do
      it { expect(Temperature.new('30', 'C').converse('K')).to eq 303.15 }
    end
    context 'from_C_to_K' do
      it { expect(Temperature.new('30', 'C').converse('F')).to eq 86 }
    end
    context 'from_K_to_C' do
      it { expect(Temperature.new('400', 'K').converse('C')).to eq 126.85 }
    end
    context 'from_K_to_F' do
      it { expect(Temperature.new('400', 'K').converse('F')).to eq 260.33 }
    end
    context 'from_F_to_C' do
      it { expect(Temperature.new('86', 'F').converse('C')).to eq 30 }
    end
    context 'from_F_to_K' do
      it { expect(Temperature.new('86', 'F').converse('K')).to eq 303.15 }
    end
  end
end
