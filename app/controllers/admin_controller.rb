class AdminController < ApplicationController

    def report
        @report = Report.all.order("status")
    end

    def suggest
        @suggest = Suggestion.all.order("status")
    end

    def report_review
        @report = Report.find(params[:id])
    end

    def report_update
        @report = Report.find(params[:id])
        @report.update_attributes(report_params)
        flash[:notice] = "Report updated"
        redirect_to '/admin/report'
    end

    def suggest_review
        @suggest = Suggestion.find(params[:id])
    end

    def suggest_update
        @suggest = Suggestion.find(params[:id])
        @suggest.update_attributes(suggest_params)
        flash[:notice] = "Suggestion updated"
        redirect_to '/admin/suggest'
    end

    def report_params
        params.require(:report).permit(:review, :status)
    end

    def suggest_params
        params.require(:suggestion).permit(:review, :status)
    end
end