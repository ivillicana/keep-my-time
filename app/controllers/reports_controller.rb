class ReportsController < ApplicationController

  def index
    @reports = current_user.reports
  end

  def new
    
  end

  def create
    current_user.reports.create(report_params)
    redirect_to reports_path
  end

  private

  def report_params
    params.require(:report).permit(:month, :year, :placements, :video_showings, :hours, :return_visits, :bible_studies, :comments)
  end
  
end
