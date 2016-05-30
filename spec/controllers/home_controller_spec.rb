# frozen_string_literal: true
require "rails_helper"

RSpec.describe HomeController, type: :controller do
  describe "get #index" do
    before { get :index }
    it { expect(response).to render_template(:index) }
    it { expect(assigns(:circles)).not_to be_nil }
    it { expect(assigns(:policies)).not_to be_nil }
  end

  describe "get #roles" do
    before { get :roles }
    it { expect(response).to render_template(:roles) }
    it { expect(assigns(:policies)).not_to be_nil }
    it { expect(assigns(:roles)).not_to be_nil }
  end
end
