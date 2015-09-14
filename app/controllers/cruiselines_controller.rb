class CruiselinesController < ApplicationController
  respond_to :json


  def index
    respond_to do |format|
      format.json { render json: Cruiselines.all }
      format.html
    end
  end


private
  def visitor_params
    params.require(:cruiselines).permit(:cruise_line_name, :cruise_ship_name, :id)
  end
end


