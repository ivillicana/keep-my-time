module ReportsHelper

  def report_month_year(report)
    "#{report.month} - #{report.year}"
  end

  def report_months_for_select
    %w[January
      February
      March
      April
      May
      June
      July
      August
      September
      October
      November
      December]
  end

  def report_years_for_select
    [2018, 2019, 2020]
  end
end
