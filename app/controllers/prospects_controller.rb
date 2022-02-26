class ProspectsController < ApplicationController
  def index
    @prospects_quantity = Prospect.where(status: 'prospect').count
    @interested_quantity = Prospect.where(status: 'interested').count
    @clients_quantity = Prospect.where(status: 'client').count
  end
end
