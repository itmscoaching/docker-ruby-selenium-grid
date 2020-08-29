require 'selenium-webdriver'
docker_ip = %x(/sbin/ip route|awk '/default/ { print $3 }').strip
caps = Selenium::WebDriver::Remote::Capabilities.new
caps["browserName"] = "chrome"
$driver = Selenium::WebDriver.for(:remote, :url => "http://#{docker_ip}:4444/wd/hub", :desired_capabilities => caps)

