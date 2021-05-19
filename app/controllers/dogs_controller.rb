class DogsController < ApplicationController
    def new
        @dog = Dog.new
    end

    def create
        @dog = Dog.create(dog_params)
        if @dog.save

        else

        end

    end

    def show
        @dog = Dog.find_by_id(params[:id])

    end

    private

    def dog_params
        params.require(:dog).permit(:name, :age, :breed, :hobbies, :bio)
    end
end
