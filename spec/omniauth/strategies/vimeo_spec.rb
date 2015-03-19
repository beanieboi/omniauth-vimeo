require 'spec_helper'

RSpec.describe OmniAuth::Strategies::Vimeo do
  subject do
    OmniAuth::Strategies::Vimeo.new({})
  end

  context "client options" do
    it 'should have correct name' do
      expect(subject.options.name).to eq("vimeo")
    end

    it 'should have correct token url' do
      expect(subject.options.client_options.token_url).to eq('/oauth/access_token')
    end

    it 'should have correct authorize url' do
      expect(subject.options.client_options.authorize_url).to eq('/oauth/authorize')
    end

    it 'should have correct site' do
      expect(subject.options.client_options.site).to eq("https://api.vimeo.com")
    end
  end
end
