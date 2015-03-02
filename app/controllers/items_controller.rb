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
  
  def destroy
    @list = List.find(params[:list_id])
    @item = @list.items.find(params[:id])
    
    if @item.destroy 
      flash[:notice] = "Item was deleted"
      redirect_to @list
    else 
      flash[:error] = "Item couldn't be deleted.Try again"
    end   
  end 
  
  respond_to do |format|
    format.html
    format.js
  end   
  
  private
  
  def item_params
    params.require(:item).permit(:name)
  end
end
