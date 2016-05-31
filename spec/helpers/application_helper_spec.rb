# frozen_string_literal: true
require "rails_helper"

RSpec.describe ApplicationHelper, type: :helper do
  describe "#resource_from_id" do
    let(:circle) { { id: "test" } }
    let(:role) { { id: "test" } }
    before { assign(:circles, [circle]) }
    before { assign(:roles, [role]) }
    context "when resource is a role" do
      it { expect(helper.resource_from_id("test", "role")).to eql(role) }
    end

    context "when resource is a circle" do
      it { expect(helper.resource_from_id("test", "circle")).to eql(circle) }
    end

    context "when there is no resource ID for a circle" do
      it do
        expect(helper.resource_from_id(nil, "circle")).
          to eql(name: "Circle Unspecified")
      end
    end

    context "when there is no resource ID for a circle" do
      it do
        expect(helper.resource_from_id(nil, "role")).
          to eql(name: "Role Unspecified")
      end
    end
  end
end
