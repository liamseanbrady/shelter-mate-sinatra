require 'rubygems'
require 'sinatra'
require 'pry'

set :sessions, true

get '/' do
  redirect '/sign_in'
end

get '/sign_in' do
  erb :sign_in
end

post '/sign_in' do
  session[:shelter_name] = params[:shelter_name]
  redirect '/new_dog'
end

get '/new_dog' do
  erb :new_dog
end

post '/new_dog' do
  dog_name = params[:dog_name]
  session[dog_name] = {}
  session[dog_name][:dog_name] = params[:dog_name]
  session[dog_name][:dog_age] = params[:dog_age]
  session[dog_name][:dog_gender] = params[:dog_gender]
  session[dog_name][:dog_status] = params[:dog_status]
  session[dog_name][:reason_in_shelter] = params[:reason_in_shelter]
  session[dog_name][:date_in_shelter] = params[:date_in_shelter]
  session[dog_name][:dog_breed] = params[:dog_breed]
  session[dog_name][:dog_spay_or_neuter] = params[:dog_spay_or_neuter]
  session[dog_name][:dog_weight] = params[:dog_weight]
  session[dog_name][:be_date_done] = params[:be_date_done]
  session[dog_name][:be_handler] = params[:be_handler]
  session[dog_name][:be_observer] = params[:be_observer]
  session[dog_name][:be_handling_notes] = params[:be_handling_notes]
  session[dog_name][:be_resource_notes] = params[:be_resource_notes]
  session[dog_name][:be_dog_test] = params[:be_dog_test]
  session[dog_name][:be_cat_test] = params[:be_cat_test]
  session[dog_name][:medical_history] = params[:medical_history]
  session[dog_name][:indemnities] = params[:indemnities]

  session[:current_dog] = dog_name

  redirect '/dogs'
end

get '/dogs' do
  erb :dogs
end

post '/dogs' do
  session[:current_dog] = params.flatten.last

  redirect '/dog_profile'
end

get '/dog_profile' do
  erb :dog_profile
end

post '/remove_dog' do
  session.delete(session[:current_dog])

  redirect '/dogs'
end




