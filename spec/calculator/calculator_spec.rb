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
      expect(result).to eq(-12)
    end

    it 'com números negativos' do
      result = calc.subtrair(-5, -7)
      expect(result).to eq(2)
    end

    it 'com números reais' do
      result = calc.subtrair(1.2, 1.0)
      expect(result).to eq(0.19999999999999996)
    end
  end

  context 'dividir' do
    it 'com números positivos' do
      result = calc.dividir(4,2)
      expect(result).to eq(2)
    end

    it 'com números positivos e negativos' do
      result = calc.dividir(-15, 3)
      expect(result).to eq(-5)
    end

    it 'com números negativos' do
      result = calc.dividir(-15, -3)
      expect(result).to eq(5)
    end

    it 'com números reais' do
      result = calc.dividir(10, 3)
      expect(result).to eq(3)
    end
  end
  
  context 'multiplicar' do
    it 'com números positivos' do
      result = calc.multiplicar(3,2)
      expect(result).to eq(6)
    end

    it 'com números positivos e negativos' do
      result = calc.multiplicar(-15, 3)
      expect(result).to eq(-45)
    end

    it 'com números negativos' do
      result = calc.multiplicar(-15, -3)
      expect(result).to eq(45)
    end

    it 'com números reais' do
      result = calc.multiplicar(1.1, 3)
      expect(result).to eq(3.3000000000000003)
    end
  end


end
