class Definitions
  define_method(:initialize) do |part_of_speech, definition_entry|
    @definition_entry = definition_entry
    @part_of_speech = part_of_speech
  end

  define_method(:total_definition) do
    @definition = "[" + @part_of_speech + "] " + @definition_entry
    @definition
  end

end
