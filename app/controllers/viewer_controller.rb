class ViewerController < ApplicationController
  
  def show
    @page = Page.find_by_page_url(params[:page_url])
    require_user if @page.status == 'private'
    @subpages = @page.subpages
  end

end
