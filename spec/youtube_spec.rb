require './support/helpers'

describe 'Youtube open page' do

  before :all do
    start_browser
  end

  it 'I open page' do
    open_page('youtube.com')
  end

  it 'Search video' do
    $browser.text_field(:name => 'search_query').set("WebDriver rocks!")
    $browser.button(:id => 'search-btn').click
  end

  it 'should see result' do
     $browser.text.include?('How to select list box Value in Selenium WebDriver')
  end

end