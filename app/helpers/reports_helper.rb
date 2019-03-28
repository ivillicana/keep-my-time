module ReportsHelper

  def report_month_year(report)
    "#{report.month} - #{report.year}"
  end
end
