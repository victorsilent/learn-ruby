class LovesController < ApplicationController

  def create
    @person = Person.find(params[:person_id])
    @love = @person.create_love(love_params)
    redirect_to people_path
  end

  def new
    @person = Person.find(params[:person_id])
    @love = @person.build_love
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def love_params
      params.require(:love).permit(:name,:age)
    end
end
