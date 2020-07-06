
require 'time'
require 'tabulate'

module Due
  # Due class tales a given date and provides a number of period measures until or since that date
  class Due
    attr_accessor :date_time, :now_date_time, :difference

    def initialize(the_date_time)
      @date_time = Time.parse(the_date_time)
      @difference = 0.0
    end

    def print_summary
      update_now_date_time
      calc_difference
      puts "Minutes #{till_or_since}: \t #{calc_mins_till.round(2)} min(s) \n
      Hours #{till_or_since}: \t #{calc_hours_till.round(2)} hour(s) \n
      Days #{till_or_since}: \t #{calc_days_till.round(2)} day(s) \n
      Weeks #{till_or_since}: \t #{calc_weeks_till.round(2)} week(s) \n
      Months #{till_or_since}: \t #{calc_months_till.round(2)} month(s) \n
      Years #{till_or_since}: \t #{calc_years_till.round(2)} year(s)"
    end

    def summary_array
      row = []
      column = ['Minutes', till_or_since, calc_mins_till.round(2), 'min(s)']
      row << column
      column = ['Hours', till_or_since, calc_hours_till.round(2), 'hours(s)']
      row << column
      column = ['Days', till_or_since, calc_days_till.round(2), 'day(s)']
      row << column
      column = ['Weeks', till_or_since, calc_weeks_till.round(2), 'week(s)']
      row << column
      column = ['Months', till_or_since, calc_months_till.round(2), 'month(s)']
      row << column
      column = ['Years', till_or_since, calc_years_till.round(2), 'year(s)']
      row << column
    end

    def summary_table
      update_now_date_time
      calc_difference
      labels = ['Period', ' ', 'Duration', 'Measure']
      rows = summary_array
      puts tabulate(labels, rows, { 'indent' => 4, 'style' => 'fancy' })
    end

    def update_now_date_time
      @now_date_time = Time.new
    end

    def calc_difference
      @difference = @date_time.to_f - @now_date_time.to_f
    end

    def till_or_since
      if @difference.negative?
        'since'
      else
        'till'
      end
    end

    def calc_mins_till
      (@difference.round(2) / 60.00).round(2)
    end

    def calc_hours_till
      (calc_mins_till / 60.00).round(2)
    end

    def calc_days_till
      (calc_hours_till / 24.00).round(2)
    end

    def calc_months_till
      (calc_days_till / 31.0).round(2)
    end

    def calc_years_till
      (calc_months_till / 12.00).round(2)
    end

    def calc_weeks_till
      (calc_days_till / 7.0).round(2)
    end
  end
end
