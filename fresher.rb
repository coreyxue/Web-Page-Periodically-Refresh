# -*- coding: utf-8 -*-
require 'rubygems'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox
driver.get "http://---website login page url---/"

element = driver.find_element :name => "---email field name---"
element.click
element.send_keys "---your email---"
element1 = driver.find_element :name => "---password field name---"
element1.send_keys "---your password---"
element2 = driver.find_element :id => "---login botton id---"
element2.click

puts "Succussfully loged in!"
#see the current page title
#puts "Page title is #{driver.title}"

# wait for a while, you might consider using wait below
#wait = Selenium::WebDriver::Wait.new(:timeout => 10)
#wait.until { driver.title.start_with? "" }

# for simplicity wait for 10 seconds
sleep 5

#puts "Page title is #{driver.title}"
counter = 1
while true
  sleep ---period--- #seconds of each period
  driver.navigate.refresh
  puts "You have refreshed #{counter} times."
  counter += 1
end
#no need to quit
driver.quit
