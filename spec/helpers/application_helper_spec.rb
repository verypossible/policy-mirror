# frozen_string_literal: true
require "rails_helper"

RSpec.describe ApplicationHelper, type: :helper do
  describe "#policy_from_id" do
    let(:policy) { { id: "test" } }
    before { assign(:policies, [policy]) }
    it { expect(helper.policy_from_id("test")).to eql(policy) }
  end
end
