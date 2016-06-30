require('rspec')
require('capybara')
require('coin_slide.rb')

describe('String#coin_slide') do\

  it('given 50 it should return [2,0,0,0]') do
    expect("50".coin_slide()).to eq([2,0,0,0])
  end

  it('given 70 it should return [2,2,0,0]') do
    expect("70".coin_slide()).to eq([2,2,0,0])
  end

  it('given 90 it should return [3,1,1,0]') do
    expect("90".coin_slide()).to eq([3,1,1,0])
  end

  it('given 91 it should return [3,1,1,1]') do
    expect("91".coin_slide()).to eq([3,1,1,1])
  end

  it('given 1.50 it should return [6,0,0,0]') do
    expect('1.50'.coin_slide()).to eq([6,0,0,0])
  end

end
