class BlogconfigsController < ApplicationController
  layout 'blog'

  def index
    @blogconfig = Blogconfig.find 1
  end

  def edit
    @blogconfig = Blogconfig.find 1
    if request.patch?
      @blogconfig.update blogconfig_params
      redirect_to '/blogconfigs'
  end

  private
  def blogconfig_params
    params.require(:blogconfig).permit(:title, :subtitle, :stylesheet)
  end
end
