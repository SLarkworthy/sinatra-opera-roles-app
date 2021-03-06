class RolesController < ApplicationController

    get '/roles' do
        @roles = Role.all
        erb :'roles/index'
    end

    get '/roles/new' do
        erb :'roles/new'
    end

    post '/roles' do
        if !logged_in?
            redirect '/'
        end
        if params[:name] != "" && params[:opera] != "" && params[:composer] != ""
            params[:user_id] = current_user.id
            @role = Role.create(params)
            redirect "/roles/#{@role.id}"
        else
            flash[:message] = "Role must have a name, composer, and opera."
            redirect '/roles/new'
        end
    end
    
    get '/roles/:id' do
        @role = Role.find(params[:id])
        erb :'roles/show'
    end

    delete '/roles/:id' do
        @role = Role.find(params[:id])
        if logged_in? && @role.user == current_user
            @role.destroy
            redirect "/users/#{current_user.id}"
        else 
            redirect '/roles'
        end
    end

    get '/roles/:id/edit' do
        @role = Role.find(params[:id])
        if logged_in? && @role.user == current_user
            erb :'roles/edit'
        else
            redirect "/"
        end
    end

    patch '/roles/:id' do
        @role = Role.find(params[:id])
        if logged_in? && @role.user == current_user
            params[:user_id] = current_user.id
            params.delete("_method")
            @role.update(params)
            if @role.role_completed?
                flash[:message] = "Congrats on completing this role!"
            end
            redirect "/roles/#{@role.id}"
        else
            redirect '/'
        end
    end

end