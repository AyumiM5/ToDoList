class CardsController < ApplicationController
  def new
    @card = Card.new
    @list = List.find(params[:id])
  end

  def create
    @card = Card.new(card_params)
    if @card.save
      redirect_to :root
    else
      render 'new'
    end
  end
  
  private
  
  def card_params
    params.require(:card).permit(:title, :memo, :list_id)
  end
end
