require './implementation'
describe 'StringCalculator' do
  context 'implements calculate method' do

    it 'with empty value as input returns 0' do
      expect(StringCalculator.calculate("")).to eq 0
    end

    it 'with only one string value as input returns same number' do
      expect(StringCalculator.calculate("1")).to eq 1
    end

    it 'with two strings values as input returns total sum' do
      expect(StringCalculator.calculate("2,3")).to eq 5
    end

    it 'with more than strings values as input returns total sum' do
      expect(StringCalculator.calculate("1,2,3,4,5,6,7,8,9")).to eq 45
    end
  end
end
