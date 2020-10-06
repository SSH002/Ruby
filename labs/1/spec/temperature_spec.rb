require '../lib/temperature.rb'

RSpec.describe Temperature do
  describe '.temperature' do
    context 'from_C_to_C' do
      it { expect(Temperature.new('30', 'C').converse('C')).to eq 30 }
    end
    context 'from_C_to_F' do
      it { expect(Temperature.new('30', 'C').converse('K')).to eq 303.15 }
    end
    context 'from_C_to_K' do
      it { expect(Temperature.new('30', 'C').converse('F')).to eq 86 }
    end
    context 'from_K_to_C' do
      it { expect(Temperature.new('400', 'K').converse('C')).to eq 126.85 }
    end
    context 'from_K_to_K' do
      it { expect(Temperature.new('400', 'K').converse('K')).to eq 400 }
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
    context 'from_F_to_F' do
      it { expect(Temperature.new('86', 'F').converse('F')).to eq 86 }
    end
    context 'from_correct_number' do
      it { expect(Temperature.new('86', 'F').number?('30.690')).to eq true }
    end
    context 'from_incorrect_number' do
      it { expect(Temperature.new('86', 'F').number?('-309,O2')).to eq false }
    end
    context 'from_correct_scale' do
      it { expect(Temperature.new('86', 'F').check_scale('f')).to eq true }
    end
    context 'from_incorrect_scale' do
      it { expect(Temperature.new('86', 'F').check_scale('V')).to eq false }
    end
    context 'from_correct_kelvin' do
      it { expect(Temperature.new('300', 'K').check_kelvin(300, 'K')).to eq true }
    end
    context 'from_incorrect_kelvin' do
      it { expect(Temperature.new('86', 'F').check_kelvin(-300, 'k')).to eq false }
    end
  end
end
