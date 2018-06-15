class ReportsController < ApplicationController

    def new
        @report = Report.new
    end

    def create
        @report = Report.create(report_params)
        flash[:notice] = "Report successfully submitted. We will rectify the issue ASAP"
        redirect_to '/'
    end

    def report_params
        params.require(:report).permit(:user_id, :card_id, :image, :remote_image_url, :details)
    end
end