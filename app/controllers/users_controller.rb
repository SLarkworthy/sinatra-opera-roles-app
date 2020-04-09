class UsersController < ApplicationController

    get '/signup' do
    end

    post '/signup' do
    end
    
    get '/login' do
        erb :'users/login'
    end

    post '/login' do
        binding.pry
    end


end