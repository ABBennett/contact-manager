require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

require_relative 'models/contact'
also_reload 'models/contact'



get '/' do
  @contacts = Contact.all
  erb :index
end

get '/contacts/:id' do
  id = params[:id]
  @contact = Contact.where(id: id)
  erb :show
end
