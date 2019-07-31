class CustomersController < ApplicationController
  require 'csv'
  def index
    @customers = Customer.all
  end

  def upload
    CSV.foreach(params[:leads].path, headers: true) do |lead|
      Customer.create(email: lead[0], first_name:)
    end
    redirect_to customers_path
  end 
end
