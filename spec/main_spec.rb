require 'webrick'
require 'green_onion'
require 'capybara/rspec'
require 'rspec'
require 'spec_helper'

describe 'index.html' do

  before(:each) do
    @comparison = GreenOnion::Compare.new
    @tolerance = 0.5
  end

  it 'index page should match the solution' do
    solution = './spec/skins/index.html.png'
    student = './spec/skins/index.html_fresh.png'
    @comparison.percentage_diff(solution, student)
    expect(@comparison.percentage_changed).to be < @tolerance
  end
  
end