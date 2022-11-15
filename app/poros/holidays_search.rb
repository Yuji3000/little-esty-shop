require 'httparty'
require './app/poros/holiday'
require './app/services/nager_service'

class HolidaySearch
  def holiday_information
    service.holidays.map do |data|
      Holiday.new(data)
    end
  end

  def service
    HolidayService.new
  end
end