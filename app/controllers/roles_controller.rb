class RolesController < ApplicationController

    get '/roles/new' do
        erb :'roles/new'
    end

    post '/roles' do
        if !logged_in?
            redirect '/'
        end
        if params[:name] != ""
            params[:user_id] = current_user.id
            @role = Role.create(params)
            redirect "/roles/#{@role.id}"
        else
            redirect '/roles/new'
        end
    end
    
    get '/roles/:id' do
        @role = Role.find(params[:id])
        erb :'roles/show'
    end

end