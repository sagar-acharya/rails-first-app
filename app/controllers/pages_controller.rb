class PagesController < ApplicationController
  def home
    @projects = Project.all

  end

  def about(title="Default")
    @title = title
  end

  def contact
  end
end
