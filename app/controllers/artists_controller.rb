class ArtistsController < ApplicationController
  get '/artists' do
    @artists = Artist.all
    erb :'artists/index'
  end

  get '/artists/:slug' do
  @artist = Artist.find_by_slug(params[:slug])
  erb 'artists/show'.to_sym
  end
end
