# frozen_string_literal: true
module ApplicationHelper
  def resource_from_id(id, resource)
    return { name: "#{resource.capitalize} Unspecified" } unless id
    collection(resource).detect { |r| r[:id] == id }
  end

  private

  def collection(resource)
    instance_variable_get("@#{resource.pluralize}")
  end
end
