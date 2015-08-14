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

  describe('#add_definition') do
    it('adds a definition to the word it is called upon') do
      test_word = Words.new('doc')
      test_DEF = Definitions.new('Noun', 'An understanding dwarf.')
      total = test_word.add_definition(test_DEF)
      expect(test_word.show_definitions()).to(eq(total))
    end
  end

end

describe(Definitions) do
  describe('#total_definition') do
    it('returns the dictionary definition with part of speech') do
      test_entry = Definitions.new('Noun', 'Acting strangely.')
      expect(test_entry.total_definition()).to(eq('[Noun] Acting strangely.'))
    end
  end

end
