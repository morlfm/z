require 'airborne'

describe 'cities name' do
  it 'should validate city name by id' do
    get 'api.openweathermap.org/data/2.5/weather?appid=13846ea88937f863d4f219a84a8bcac9&id=2263217'
    expect_json_types(name: :string)
    expect_json(name: 'São Sebastião')
  end


  it 'should validate city name' do
    get 'api.openweathermap.org/data/2.5/weather?q=Bonito&appid=13846ea88937f863d4f219a84a8bcac9'
    expect_json_types(name: :string)
    expect_json(name: 'Bonito')
  end

  it 'should validate city name by cordinates' do
    get 'api.openweathermap.org/data/2.5/weather?lat=-23.074856&lon=-46.580075&appid=13846ea88937f863d4f219a84a8bcac9'
    expect_json_types(name: :string)
    expect_json(name: 'Atibaia')
  end

  it 'should validate city name by Zip' do
    get 'api.openweathermap.org/data/2.5/weather?zip=33139,us&appid=13846ea88937f863d4f219a84a8bcac9'
    expect_json_types(name: :string)
    expect_json(name: 'Miami Beach')
  end

end
