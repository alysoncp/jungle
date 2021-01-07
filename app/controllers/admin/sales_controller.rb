class Admin::SalesController < ApplicationController

  http_basic_authenticate_with name: ENV['USER_NAME'], password: ENV['USER_PASSWORD']

  def index
    @sales = Sale.all
  end  



end
