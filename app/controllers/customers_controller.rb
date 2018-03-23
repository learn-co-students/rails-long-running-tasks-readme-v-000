class CustomersController < ApplicationController
require 'csv'

  def index
    @customers = Customer.all
  end

  def upload
    CSV.foreach(params[:leads].path, headers: true) do |lead|
      Customer.create(email: leads[0], first_name: leads[1], last_name: leads[2] )
    end
  redirect_to customers_path
  end

end
