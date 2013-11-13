class HomeController < ApplicationController

  def index
  end

  def contact_us
  end

  def main_services
    @service = Service.find(params[:id])
  end

  def main_specialties
    @specialty = Specialty.find(params[:id])
  end

end
