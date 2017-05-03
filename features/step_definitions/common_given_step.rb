require_relative '../helpers/common_helpers'

Given(/that the website is up$/) do 
  response =  verify_website()
  if response.code != '200'
    raise Exception.new("website is not up")
  end
end
