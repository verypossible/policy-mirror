# frozen_string_literal: true
module ApplicationHelper
  def policy_from_id(id)
    @policies.detect { |policy| policy[:id] == id }
  end

  def role_from_id(id)
    return { name: "Role Unspecified" } unless id
    @roles.detect { |role| role[:id] == id }
  end
end
