class Word
  @@words = [ ]

  define_method(:initialize) do |word|
    @definitions = [ ]
    @word = word
    @id = @@words.length().+(1)
  end

  define_singleton_method(:clear) do
    @@words = []
  end

  define_singleton_method(:all) do
    @@words
  end

  define_singleton_method(:find) do |id|
    found_word = nil
    @@words.each() do |word|
      if word.id() == id.to_i
        found_word = word
      end
    end
    found_word
  end

  define_method(:save) do
    @@words.push(self)
  end

  define_method(:add_definition) do |definition|
    @definitions.push(definition.get_definition())
  end

  define_method(:get_definitions) do
    @definitions
  end

  define_method(:get_word) do
    @word
  end

  define_method(:id) do
    @id
  end


end
