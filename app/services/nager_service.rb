require 'httparty'

class NagerService
  def holidays
    get_url("https://date.nager.at/api/v3/NextPublicHolidays/us")
  end

  def get_url(url)
    response = HTTParty.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end


# class NagerService
#   def holidays
#     get_url("https://date.nager.at/api/v3/NextPublicHolidays/us")
#   end

#   def get_url(url)
#     response = HTTParty.get(url)
#     JSON.parse(response.body, symbolize_names: true)
#   end
# end
