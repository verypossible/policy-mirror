# frozen_string_literal: true
class HomeController < ApplicationController
  def index
    set_resources("circles")
  end

  def roles
    set_resources("roles")
  end

  private

  def set_resources(resource)
    policy_data = GLASSFROG_API.get_resource(:policies)
    @policies = policy_data[:policies]
    group_policies("#{resource.singularize}_id")
    instance_variable_set("@#{resource}", policy_data[:linked][resource])
  end

  def group_policies(key)
    @policies = @policies.group_by { |policy| policy[:links][key] }
  end
end
