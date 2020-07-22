class SodasController < ApplicationController
  def index
    @sodas = Soda.all
    render 'index.html.erb'
  end

  def show
    @soda = Soda.find_by(id: params[:id])
    render 'show.html.erb'
  end
end
