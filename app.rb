require("sinatra")
require("sinatra/reloader")
require("./lib/word")
require("./lib/definition")
also_reload("lib/**/*.rb")


get('/') do
  @all_words = Word.all()
  erb(:index)
end

get('/success') do
  erb(:success)
end

post('/success') do
  @word = Word.new(params.fetch('word'))
  @word.save()
  erb(:success)
end

get('/word/:id') do
  @word = Word.find(params.fetch('id'))
  @all_definitions = @word.get_definitions()
  erb(:word)
end

post('/success_2') do
  @word = Word.find(params.fetch('word_id').to_i)
  @definition = Definition.new(params.fetch('definition'))
  @definition.save()
  @word.add_definition(@definition)
  erb(:success_2)
end
