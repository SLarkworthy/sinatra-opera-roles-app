class UsersController < ApplicationController

    get '/signup' do
        erb :'users/signup'
    end

    post '/signup' do
        @user = User.new(params)
        if @user.save
            session[:user_id] = @user.id
            flash[:message] = "Thanks for signing up! Use the links above to create a role or see notes about others."
            redirect "/users/#{@user.id}"
        else
            flash[:message] = "Failed to sign up. Please fill in all fields. Try a different username and email."
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
            redirect "/users/#{@user.id}"
        else
            flash[:message] = "Incorrect email or password. Sign up or try again."
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