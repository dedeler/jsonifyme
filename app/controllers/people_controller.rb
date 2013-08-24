class PeopleController < ApplicationController
  before_action :set_user
  before_action :set_person, only: [:show, :edit, :update, :destroy]


  # GET /people/1
  # GET /people/1.json
  def show
  end



  # PATCH/PUT /people/1
  # PATCH/PUT /people/1.json
  def update
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to @person, notice: 'Person was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = current_user.person
    end

    def set_user
      @user = current_user
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_params
      params[:person].permit(:first_name, :last_name)
    end
end
