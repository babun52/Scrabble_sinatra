require('sinatra')
require('./lib/scrabble')

get('/') do
  erb(:index)
end

get('/word_form') do
  @score = params.fetch('word_input').scrabble()
  erb(:word)
end
