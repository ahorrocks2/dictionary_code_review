require('sinatra')
require('sinatra/reloader')
require('./lib/definitions')
require('./lib/words')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  @@word_list = Words.all()
  erb(:index)
end

post('/add') do
  new_word = params.fetch('new_word')
  @word_entry = Words.new(new_word)
  @word_entry.save()
  redirect('/')
end
