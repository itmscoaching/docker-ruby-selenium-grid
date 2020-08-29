When("I search for {string}") do |string|
  $driver.get "https://google.com"
  $driver.find_element(name: 'q').send_key("itms coaching")
  $driver.find_element(name: 'q').send_key(:enter)
  sleep 2
  Kernel.puts $driver.title
  $driver.quit
end
