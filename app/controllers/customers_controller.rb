class CustomersController < ApplicationController

  def index
    @customers = Customer.all
  end

  def upload

  end
end
