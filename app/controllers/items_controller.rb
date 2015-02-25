class ItemsController < ApplicationController
  def new
    @item = Items.new 
  end
  
  def create 
    @list = current_user.list
    @item = @list.items.new(item_params)
    if @item.save 
      flash[:notice] = "Item was saved"
      redirect_to @list
    else 
      flash[:error] = "There was an error saving the item. Please try again"
      redirect_to :new 
    end   
  end
  
  private
  
  def item_params
    params.require(:item).permit(:name)
  end
end
