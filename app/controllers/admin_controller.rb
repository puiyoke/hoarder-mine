class AdminController < ApplicationController

    def report
        @report = Report.all
    end

    def suggest
        @suggest = Suggestion.all
    end
end