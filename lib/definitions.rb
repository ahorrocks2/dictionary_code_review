class Definitions
  define_method(:initialize) do |definition_entry|
    @definition = definition_entry
  end

  define_method(:definition) do
    @definition
  end

end
