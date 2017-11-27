class StaticPageController < ApplicationController
  def about_us
    @about = StaticPage.all.first
  end

  def contact_us
    @contact = StaticPage.all.first
  end
end
