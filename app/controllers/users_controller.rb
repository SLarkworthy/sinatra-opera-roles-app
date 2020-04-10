class UsersController < ApplicationController

    get '/signup' do
    end

    post '/signup' do
    end
    
    get '/login' do
        erb :'users/login'
    end

    post '/login' do
        @user = User.find_by(email: params[:email])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect "/users/#{@user.id}" #to be changed
        else
            #flash message telling them their email/password were incorrect
            redirect '/login'
        end
    end

    get '/users/:id' do
        "Soon to be the user show page"
    end


end