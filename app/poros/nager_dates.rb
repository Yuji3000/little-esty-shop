require './app/poros/holidays_search.rb'
require 'httparty'

holidays = HolidaySearch.new.holiday_information

holidays.each do |holiday|
  puts holiday.date
  puts holiday.localname
  puts holiday.name
  puts holiday.countrycode
  puts holiday.types
end

