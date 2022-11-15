class ApplicationController < ActionController::Base
  before_action :nader_info

  def nader_info
    @holidays = HolidaySearch.new.holiday_information
  end
end
