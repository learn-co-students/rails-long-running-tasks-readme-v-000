class CustomersController < ApplicationController
  require 'csv'
  # http://ruby-doc.org/stdlib-1.9.3/libdoc/csv/rdoc/CSV.html


  def index
    @customers = Customer.all
  end

  def upload
    CSV.foreach(params[:leads].path, headers: true) do |lead|
      # Each row is ordinal, like an array
      # position 0 is email, position 1 is first name, and position 2 is last name
      Customer.create(email: lead[0], first_name: lead[1], last_name: lead[2])
    end
    redirect_to customers_path
  end

end
