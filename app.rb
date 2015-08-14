require('sinatra')
require('sinatra/reloader')
require('./lib/definitions')
require('./lib/words')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  @word_list = Words.all()
  erb(:index)
end

post('/add') do
  new_word = params.fetch('new_word')
  @word_entry = Words.new(new_word)
  @word_entry.save()
  redirect('/')
end

get('/word/:id') do
  @word_entry = Words.find(params.fetch('id').to_i())
  erb(:definition_form)
end
