# frozen_string_literal: true
require "rails_helper"

RSpec.describe Glassfrog do
  subject { Glassfrog.new("test", "v3") }

  describe '#get_resource' do
    let(:resource) { :circles }
    it { expect(subject.get_resource(resource)).to have_key(resource) }
  end
end
