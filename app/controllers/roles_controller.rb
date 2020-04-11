class RolesController < ApplicationController

    get '/roles/new' do
        erb :'roles/new'
    end

    post '/roles' do
        erb :'roles/show'
    end

end