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

    get '/roles/:id/edit' do
        @role = Role.find(params[:id])
        erb :'roles/edit'
    end

    patch '/roles/:id' do
        @role = Role.find(params[:id])
        params[:user_id] = current_user.id
        params.delete("_method")
        binding.pry
        @role.update(params)
        redirect "/roles/#{@role.id}"
      end

      private
      def set_role
        @role = Role.find(params[:id])
      end
end