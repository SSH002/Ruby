require './lab1.rb'

RSpec.describe Lab1 do
  describe '#Lab1' do
    it 'test_C_to_C' do
      expect(Lab1.new('30', 'C').converse('C')).to eq 30
    end
    it 'test_C_to_F' do
      expect(Lab1.new('30', 'C').converse('K')).to eq 303.15
    end
    it 'test_C_to_K' do
      expect(Lab1.new('30', 'C').converse('F')).to eq 86
    end
    it 'test_K_to_C' do
      expect(Lab1.new('400', 'K').converse('C')).to eq 126.85
    end
    it 'test_K_to_K' do
      expect(Lab1.new('400', 'K').converse('K')).to eq 400
    end
    it 'test_K_to_F' do
      expect(Lab1.new('400', 'K').converse('F')).to eq 260.33
    end
    it 'test_F_to_C' do
      expect(Lab1.new('86', 'F').converse('C')).to eq 30
    end
    it 'test_F_to_K' do
      expect(Lab1.new('86', 'F').converse('K')).to eq 303.15
    end
    it 'test_F_to_F' do
      expect(Lab1.new('86', 'F').converse('F')).to eq 86
    end
    it 'test_correct_number' do
      expect(Lab1.new('86', 'F').number?('30.690')).to eq true
    end
    it 'test_incorrect_number' do
      expect(Lab1.new('86', 'F').number?('-309,O2')).to eq false
    end
    it 'test_correct_scale' do
      expect(Lab1.new('86', 'F').check_scale('f')).to eq true
    end
    it 'test_incorrect_scale' do
      expect(Lab1.new('86', 'F').check_scale('V')).to eq false
    end
    it 'test_correct_scale' do
      expect(Lab1.new('300', 'K').check_kelvin(300, 'K')).to eq true
    end
    it 'test_incorrect_scale' do
      expect(Lab1.new('86', 'F').check_kelvin(-300, 'k')).to eq false
    end
  end
end
