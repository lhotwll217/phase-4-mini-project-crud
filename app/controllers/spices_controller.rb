class SpicesController < ApplicationController

    def show
        spices =Spices.all 
        render json: spices
    end

    def index
        spice = find_spice
        render json: spice
    end

    def destroy
        spice = find_spice
        spice.destroy
        head :no_content
    end

    def create
       spice = Spice.create(spice_params)
       render json: spice
    end

    def update
        spice = find_spice
        spice.update(spice_params)
        render json: spice
    end

        



    private

    def spice_params
        params.permit(:title, :image,:decription, :notes, :rating)
    end

    def find_spice
        spice = Spice.find(params[:id])
        spice
    end

end
