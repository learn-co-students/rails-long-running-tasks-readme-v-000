class CustomersController < ApplicationController
  require 'csv'

  def index
    @customers = Customer.all
  end

  def upload
    CSV.foreach(params[:leads].path, headers: true) do |row|
      Customer.create(email: row[0], first_name: row[1], last_name: row[2])
    end
    redirect_to customers_path
  end
end
