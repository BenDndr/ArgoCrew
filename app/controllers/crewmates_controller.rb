class CrewmatesController < ApplicationController
    def index
        @crewmates = Crewmate.all
        @crewmate = Crewmate.new
    end

    def create
        @crewmate = Crewmate.create(crewmate_params)
        if @crewmate.save
           redirect_to crewmates_path
        else
            render :index
        end
    end

    def destroy
        @crewmate = Crewmate.find(params[:id])
        @crewmate.destroy
        redirect_to crewmates_path
    end

    private

    def crewmate_params
        params.require(:crewmate).permit(:name)
    end
end
