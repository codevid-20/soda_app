class SodasController < ApplicationController
  def index
    @sodas = Soda.all
    render 'index.html.erb'
  end

  def show
    @soda = Soda.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def new    
    render 'new.html.erb'
  end

  def create
    @soda = Soda.new(
      name: params[:name], 
      size: params[:size], 
      image_url: params[:image_url],
    )

    @soda.save
    redirect_to "/sodas/#{@soda.id}"
  end

  def edit
    @soda = Soda.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    @soda = Soda.find_by(id: params[:id])
    @soda.name = params[:name]
    @soda.size = params[:size]
    @soda.image_url = params[:image_url]
    @soda.save

    redirect_to "/sodas"
  end
end
