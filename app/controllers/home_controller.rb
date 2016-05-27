# frozen_string_literal: true
class HomeController < ApplicationController
  def index
    circle_data = GLASSFROG_API.get_resource(:circles)
    @circles = circle_data[:circles]
    @policies = circle_data[:linked][:policies]
  end
end
