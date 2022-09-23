class ActivitiesController < ApplicationController
    def index
        activities = Activity.all
        render json: activities, status: :ok
    end

    def destroy
        actvity = Activity.find_by(id: params[:id])
        if actvity
            actvity.destroy
            head :no_content
        else
            render json: {error: "Activity not found"}, status: :not_found
        end
    end
end
