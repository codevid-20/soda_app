class SodasController < ApplicationController
  def index
    @sodas = Soda.all
    render 'index.html.erb'
  end
end
