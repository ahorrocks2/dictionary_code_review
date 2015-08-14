class Definitions
  define_method(:initialize) do |word_type_entry, definition_entry|
    @definition = definition_entry
    @word_type = word_type_entry
  end

  define_method(:definition) do
    @definition
  end

  define_method(:type) do
    @word_type
  end
end
