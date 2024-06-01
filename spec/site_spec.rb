require 'nokogiri'
require 'open-uri'

RSpec.describe 'Resume Site' do
  before(:all) do
    @doc = Nokogiri::HTML(URI.open('http://localhost:4000'))
  end

  it 'contains the correct title' do
    expect(@doc.title).to eq('Resume: Nabil El Bajdi')
  end

  it 'contains the contact me button' do
    # Update the selector based on your HTML structure
    expect(@doc.at_css('a.button')).not_to be_nil
  end

  it 'contains the correct job experiences' do
    expect(@doc.text).to include('Scila')
    expect(@doc.text).to include('IKEA')
    expect(@doc.text).to include('Body Bazar')
  end

  it 'contains the correct education details' do
    expect(@doc.text).to include('Chas Academy')
    expect(@doc.text).to include('Internationella Engelska Gymnasiet Södermalm')
  end

  it 'contains the correct leadership experience & achievements' do
    expect(@doc.text).to include('YouTube')
    expect(@doc.text).to include('Content Creator')
    expect(@doc.text).to include('Generated 900,000+ views')
    expect(@doc.text).to include('Swimming')
    expect(@doc.text).to include('Professional Swimmer')
  end

  it 'contains the correct skills' do
    expect(@doc.text).to include('Technical Skills')
    expect(@doc.text).to include('Python, Unix/Linux, Bash, Git, Scrum, MySQL, Jenkins, Ansible, Terraform, Docker, JIRA')
    expect(@doc.text).to include('Soft Skills')
    expect(@doc.text).to include('Problem-Solving, Creative and Analytical Thinking, Teamwork, Communication, Time Management')
  end
end
