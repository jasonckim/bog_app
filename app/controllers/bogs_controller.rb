class BogsController < ApplicationController

    def index
         @bog = Bog.all
         render :index
         #raise request.inspect
     end

    def new
     	render :new
    end

    def create
     	new_bog = params.require(:bog).permit(:name, :description)
     	#raise params.inspect
     	Bog.create(new_bog)
     	redirect_to '/bogs'
     end
end