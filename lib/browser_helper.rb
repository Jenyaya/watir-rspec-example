def start_browser
  $browser = Watir::Browser.new :chrome
  $browser.driver.manage.timeouts.implicit_wait = 5 #3 seconds
end

def open_page(page)
  $browser.goto page
end

def close_browser
  $browser.close
end
