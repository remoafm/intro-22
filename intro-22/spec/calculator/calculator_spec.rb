# frozen_string_literal: true

require 'calculator'

describe Calculator do
  subject(:calc) { described_class.new }
  context 'somar' do
    it 'com números positivos' do
      result = calc.somar(3,2)
      expect(result).to eq(5)
    end

    it 'com números positivos e negativos' do
      result = calc.somar(-5, 7)
      expect(result).to eq(2)
    end

    it 'com números negativos' do
      result = calc.somar(-5, -7)
      expect(result).to eq(-12)
    end

    it 'com números reais' do
      result = calc.somar(1.2, 1)
      expect(result).to eq(2.2)
    end
  end

  context 'subtração' do
    it 'com números positivos' do
      result = calc.subtrair(3,2)
      expect(result).to eq(1)
    end

    it 'com números positivos e negativos' do
      result = calc.subtrair(-5, 7)
      expect(result).to eq(12)
    end

    it 'com números negativos' do
      result = calc.subtrair(-5, -7)
      expect(result).to eq(2)
    end

    it 'com números reais' do
      result = calc.subtrair(1.2, 1)
      expect(result).to eq(0.1)
    end
  end
end
