require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  'hello world!'
end

get '/secret' do
  'This is a secret page'
end

get '/cat' do
  "<div style='border: 3px dashed red'>
     <img src='http://bit.ly/1eze8aE'>
   </div>"
end

