class Api::ElementsController < ApplicationController
  def index
    @elements = Element.all
    render "index.json.jbuilder"
  end

  def create
    element = Element.new(
      name: params[:name],
      symbol: params[:symbol],
      atomic_number: params[:atomic_number],
      state: params[:state],
      group: params[:group],
      atomic_mass: params[:atomic_mass]
    )
    render "show.json.jbuilder"
  end

  def show
    @element = Element.find(params['id'])
    render "show.json.jbuilder"
  end
end