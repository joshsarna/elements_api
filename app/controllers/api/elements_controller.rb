class Api::ElementsController < ApplicationController
  def index
    @elements = Element.all
    render "index.json.jbuilder"
  end

  def create
    element = Element.new(
      name: params[:name],
      symbol: params[:symbol] || element.symbol,
      atomic_number: params[:atomic_number] || element.atomic_number,
      state: params[:state] || element.state,
      group: params[:group] || element.group,
      atomic_mass: params[:atomic_mass] || element.atomic_mass
    )
    element.save
    render "show.json.jbuilder"
  end

  def show
    @element = Element.find(params['id'])
    render "show.json.jbuilder"
  end

  def update
    @element = Element.find(params['id'])
    @element.update(
      name: params[:name] || @element.name,
      symbol: params[:symbol] || @element.symbol,
      atomic_number: params[:atomic_number] || @element.atomic_number,
      state: params[:state] || @element.state,
      group: params[:group] || @element.group,
      atomic_mass: params[:atomic_mass] || @element.atomic_mass
    )
    render "show.json.jbuilder"
  end

  def destroy
    @element = Element.find(params['id'])
    @element.delete
    render "index.json.jbuilder"
  end
end