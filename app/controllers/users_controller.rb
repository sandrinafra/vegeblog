class UsersController < ApplicationController
  	before_action :set_user, only: [:show, :destroy]
	before_action :require_user
	before_action :require_admin, except: [:show]

	def index
		@users = User.all
	end

	def show
	end

	def destroy
		@user.destroy
      	redirect_to users_index_path, notice: "L'utilisateur a bien été supprimé"

    end

    private
	    # Use callbacks to share common setup or constraints between actions.
	    def set_user
	      @user = User.find(params[:id])
	    end

end
