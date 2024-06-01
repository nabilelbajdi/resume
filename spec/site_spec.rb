require 'nokogiri'
require 'open-uri'

RSpec.describe 'Resume Site' do
  before(:all) do
    @doc = Nokogiri::HTML(open('http://localhost:4000'))
  end

  it 'contains the correct title' do
    expect(@doc.title).to eq('Resume: Nabil El Bajdi')
  end

  it 'contains the contact me button' do
    expect(@doc.at_css('a.contact-button')).not_to be_nil
  end

  it 'has an experience section' do
    expect(@doc.at_css('h2#experience')).not_to be_nil
  end
end
