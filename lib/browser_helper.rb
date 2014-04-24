def start_browser
  $browser = Watir::Browser.new :chrome
end

def open_page(page)
  $browser.goto page
end

def close_browser
  $browser.close
end
