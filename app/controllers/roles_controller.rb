class RolesController < ApplicationController

    get '/roles/new' do
        erb :'roles/new'
    end

    post '/roles' do
        if !logged_in?
            redirect '/'
        end
        if params[:name] != ""
            #create a new role
            # @role = Role.create(user_id: current_user.id)
            erb :'roles/show'
        else
            redirect '/roles/new'
        end
    end

end