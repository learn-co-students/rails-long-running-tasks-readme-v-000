class CustomersController < ApplicationController
   require 'csv'

   def upload
    CSV.foreach(params[:leads].path, headers: true) do |lead|
      binding.pry
      Customer.create(email: lead[0], first_name: lead[1], last_name: lead[2])
    end
    redirect_to customers_path
  end


  def index
    @customers = Customer.all
  end

end
