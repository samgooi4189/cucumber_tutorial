require_relative '../helpers/common_helpers.rb'
require 'json'
require 'byebug'

When(/^I create a weblog with the following details:$/) do |string|
  json = JSON.parse(string)
  @entity = create('weblog', json)
  @entity = JSON.parse(@entity.body)
end

