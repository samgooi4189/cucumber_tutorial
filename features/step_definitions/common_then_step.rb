require_relative '../helpers/common_helpers.rb'
require 'json'
require 'byebug'

Then(/^the weblog should be created$/) do
  if @entity["id"].nil?
    raise Exception.new("Entity not created")
  end
end

Then(/^the weblog should contains$/) do |string|
  expected = JSON.parse(string)
  @entity = get('weblog', @entity['id'])
  result = JSON.parse(@entity.response.body)  
end

