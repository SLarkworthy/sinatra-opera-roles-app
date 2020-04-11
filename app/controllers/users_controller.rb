class UsersController < ApplicationController

    get '/signup' do
        erb :'users/signup'
    end

    post '/signup' do
        if params[:name] != "" && params[:email] != "" && params[:password] != ""
            @user = User.create(params)
            session[:user_id] = @user.id
            redirect "/users/#{@user.id}"
        else
            #flash message that signup failed
            redirect '/signup'
        end
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
        @user = User.find_by(id: params[:id])
        erb :'users/show'
    end

    get '/logout' do
        session.clear
        redirect '/'
    end


end