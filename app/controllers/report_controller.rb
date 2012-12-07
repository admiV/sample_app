class ReportController < ApplicationController
	include ReportHelper
	
	before_filter :signed_in_user, only: [:upload, :select]
	
	def select
	end
	
	def upload
		if params[:upload]== nil
			redirect_to report_url, notice: "Incorrect File!"
		else
			post = save params[:upload]
			redirect_to report_url, notice: "File has been uploaded successfully!"
		end
	end
	
  private

    def signed_in_user
      unless signed_in?
        store_location
        redirect_to signin_url, notice: "Please sign in."
      end
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user?(@user)
    end
end
