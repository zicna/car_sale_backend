class VehiclesController < ApplicationController
    before_action :options, only: [:index, :show]
    def index
        vehicles = Vehicle.all

        render json: vehicles.as_json(options)
    end

    def show
        vehicle = Vehicle.find_by(id: params[:id])

        render json: vehicle
    end

    private 
    def options
        {
            include: {
                comments: {only: [:content, :user_id, :vehicle_id]}
            }
        }
    end
end 
