require './solver'

context 'factorialise' do
  describe 'Solver' do
    solver = Solver.new

    it 'Should return 5! 120' do
      expect(solver.factorial(5)).to eql(120)
    end

    it 'Should not return 5! 150' do
      expect(solver.factorial(5)).not_to eql(150)
    end

    it 'Should raise an error when a number < 0 is passed' do
      expect { solver.factorial(-5) }.to raise_error('Negative value Error')
    end

    it 'Should not raise an error when a number >= 0 is passed' do
      expect { solver.factorial(5) }.not_to raise_error('Negative value Error')
    end
    it 'when input is 0, the result should equal 1' do
      expect(solver.factorial(0)).to eql(1)
    end
  end
end

context 'Reverse string' do
  describe 'reverse' do
    solver = Solver.new

    it 'Should return olleh when given hello' do
      expect(solver.reverse('hello')).to eql('olleh')
    end

    it 'Should not return hello when given hello' do
      expect(solver.reverse('hello')).not_to eql('hello')
    end

    it 'Should return esrevorciM when given Microverse' do
      expect(solver.reverse('Microverse')).to eql('esrevorciM')
    end

    it 'Should not return Microverse when given Microverse' do
      expect(solver.reverse('Microverse')).not_to eql('Microverse')
    end
  end
end

context 'fizzbuzz' do
  describe 'Solver' do
    solver = Solver.new

    it 'Should return fizz when number is divisible by 3' do
      expect(solver.fizzbuzz(6)).to eql('fizz')
    end

    it 'Should not return buzz when number is divisible by 3' do
      expect(solver.fizzbuzz(6)).not_to eql('buzz')
    end

    it 'Should return buzz when number is divisible by 5' do
      expect(solver.fizzbuzz(20)).to eql('buzz')
    end

    it 'Should not return fizz when number is divisible by 5' do
      expect(solver.fizzbuzz(20)).not_to eql('fizz')
    end

    it 'Should return fizzbuzz when number is divisible by 3 & 5' do
      expect(solver.fizzbuzz(30)).to eql('fizzbuzz')
    end

    it 'Should not return buzzfizz when number is divisible by 3 & 5' do
      expect(solver.fizzbuzz(30)).not_to eql('buzzfizz')
    end

    it 'Should return number as a string when number is not divisible by 3 or 5' do
      expect(solver.fizzbuzz(8)).to eql('8')
    end

    it 'Should return number as a number when number is not divisible by 3 or 5' do
      expect(solver.fizzbuzz(8)).not_to eql(8)
    end
  end
end
