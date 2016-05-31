# frozen_string_literal: true
require "rails_helper"

RSpec.describe ApplicationHelper, type: :helper do
  describe "#policy_from_id" do
    let(:policy) { { id: "test" } }
    before { assign(:policies, [policy]) }
    it { expect(helper.policy_from_id("test")).to eql(policy) }
  end

  describe "#role_from_id" do
    let(:role) { { id: "test" } }
    before { assign(:roles, [role]) }
    context "when role exists" do
      it { expect(helper.role_from_id("test")).to eql(role) }
    end

    context "when role doesn't exist" do
      it { expect(helper.role_from_id(nil)).to eql(name: "Role Unspecified") }
    end
  end
end
