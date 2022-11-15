
class Holiday
  attr_reader :date,
              :localname,
              :name,
              :countrycode,
              :types
  def initialize(data)
    @date = data[:date]
    @localname = data[:localName]
    @name = data[:name]
    @countrycode = data[:countryCode]
    @types = data[:types]
  end
end
