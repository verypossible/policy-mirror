# frozen_string_literal: true
class HomeController < ApplicationController
  def index
    circle_data = GLASSFROG_API.get_resource(:circles)
    @circles = circle_data[:circles]
    @policies = circle_data[:linked][:policies]
  end

  def roles
    policy_data = GLASSFROG_API.get_resource(:policies)
    @policies = policy_data[:policies]
    group_policies
    @roles = policy_data[:linked][:roles]
  end

  private

  def group_policies
    @policies = @policies.group_by { |policy| policy[:links][:role_id] }
  end
end
