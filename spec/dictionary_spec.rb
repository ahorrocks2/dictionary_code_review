require('definitions')
require('words')
require('rspec')

describe(Words) do
  before () do
    Words.clear()
  end

  describe('#word') do
    it('returns the dictionary word') do
      test_entry = Words.new('sleepy')
      expect(test_entry.word()).to(eq('sleepy'))
    end
  end

  describe('.all') do
    it('returns blank array to begin') do
      expect(Words.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('saves a word entered to the word list') do
      test_entry = Words.new('grumpy')
      test_entry.save()
      expect(Words.all()).to(eq([test_entry]))
    end
  end

  describe('.clear') do
    it('clears the list of words') do
      expect(Words.clear()).to(eq([]))
    end
  end

  describe('#id') do
    it('returns the given id for the word') do
      test_entry = Words.new('happy')
      test_entry.save()
      test_entry_2 = Words.new('hungry')
      test_entry.save()
      expect(test_entry_2.id()).to(eq(2))
    end
  end

  describe('.find') do
    it('returns the word that correlates to the id number') do
      test_entry = Words.new('bashful')
      test_entry.save()
      expect(Words.find(1)).to(eq(test_entry))
    end
  end
end



describe(Definitions) do
  describe('#definition') do
    it('returns the dictionary definition') do
      test_entry = Definitions.new('Adjective','Acting strangely.')
      expect(test_entry.definition()).to(eq('Acting strangely.'))
    end
  end

  describe('#type') do
    it('returns the type of word the definition is describing') do
      test_entry = Definitions.new('Noun', 'A strange person.')
      expect(test_entry.type()).to(eq('Noun'))
    end
  end

end
