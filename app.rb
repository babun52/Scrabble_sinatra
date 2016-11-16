require('sinatra')
require('./lib/scrabble')

get('/') do
  erb(:index)
end

get('/title') do
  @title = params.fetch('title').scrabble()
  erb(:title)
end
