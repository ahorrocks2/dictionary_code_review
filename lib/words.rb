class Words
  @@all_words = []

  define_method(:initialize) do |word_entry|
    @word = word_entry
    @id = @@all_words.length.+(1)
    @word_definitions = []
  end

  define_method(:word) do
    @word
  end

  define_method(:save) do
    @@all_words.push(self)
  end

  define_singleton_method(:all) do
    @@all_words
  end

  define_singleton_method(:clear) do
    @@all_words = []
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:find) do |id_to_find|
    found_word = nil
    @@all_words.each() do |entry|
      if id_to_find == entry.id()
        found_word = entry
      end
    end
    found_word
  end

  define_method(:add_definition) do |def_to_add|
    @word_definitions.push((def_to_add.total_definition()))

  end

  define_method(:show_definitions) do
    @word_definitions
  end

end
