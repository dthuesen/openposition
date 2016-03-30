# Action Cable provides the framework to deal with WebSockets in Rails.
# You can generate new channels where WebSocket features live using the rails generate channel command.
#
# Turn on the cable connection by removing the comments after the require statements (and ensure it's also on in config/routes.rb).
#
#= require action_cable
#= require_self
#= require_tree ./channels
# app/assets/javascripts/active_admin.js.coffee
#= require best_in_place
#= require jquery.purr
#= require best_in_place.purr
#
# @App ||= {}
# App.cable = ActionCable.createConsumer()

$(document).ready ->
  jQuery(".best_in_place").best_in_place()