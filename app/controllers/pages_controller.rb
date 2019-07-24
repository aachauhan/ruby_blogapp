class PagesController < ApplicationController
  def about
    @title = 'About Us'
    @content = 'This is a Blog Application written in Ruby. This applications shows CRUD abilities.'
  end
end
