# frozen_string_literal: true
module ApplicationHelper
  def policy_from_id(id)
    @policies.detect { |policy| policy[:id] == id }
  end
end
