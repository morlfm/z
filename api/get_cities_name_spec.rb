require 'airborne'
require 'dotenv'
require_relative '../features/support/spec_helper.rb'

describe 'cities name' do
  it 'should validate city name by id' do
    get "api.openweathermap.org/data/2.5/weather?appid=#{$API_TOKEN}&id=2263217"
    expect_json_types(name: :string)
    expect_json(name: 'São Sebastião')
  end


  it 'should validate city name' do
    get "api.openweathermap.org/data/2.5/weather?q=Bonito&appid=#{$API_TOKEN}"
    expect_json_types(name: :string)
    expect_json(name: 'Bonito')
  end

  it 'should validate city name by cordinates' do
    get "api.openweathermap.org/data/2.5/weather?lat=-23.074856&lon=-46.580075&appid=#{$API_TOKEN}"
    expect_json_types(name: :string)
    expect_json(name: 'Atibaia')
  end

  it 'should validate city name by Zip' do
    get "api.openweathermap.org/data/2.5/weather?zip=33139,us&appid=#{$API_TOKEN}"
    expect_json_types(name: :string)
    expect_json(name: 'Miami Beach')
  end

end
