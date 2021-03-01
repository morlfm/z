require 'airborne'
require 'dotenv'
require 'pry'
require_relative '../features/support/spec_helper.rb'

describe 'cities weather' do
  it 'should validate main weather by id' do
    condition=['Rain','Snow','Extreme','Clear','Drizzle','Clouds','Thunderstorm','Mist','Smoke','Haze Dust','Fog','Sand Dust','Ash','Squall','Tornado']
    get "api.openweathermap.org/data/2.5/weather?appid=#{$API_TOKEN}&id=2263217"
    expect_json_types(name: :string)
    expect_json(weather: -> (weather){expect(condition).to include(weather[0][:main])})
  end

  it 'should validate main weather by name' do
    condition=['Rain','Snow','Extreme','Clear','Drizzle','Clouds','Thunderstorm','Mist','Smoke','Haze Dust','Fog','Sand Dust','Ash','Squall','Tornado']
    get "api.openweathermap.org/data/2.5/weather?q=Atibaia&appid=#{$API_TOKEN}"
    expect_json_types(name: :string)
    expect_json(weather: -> (weather){expect(condition).to include(weather[0][:main])})
  end
end
