require 'spec_helper'

describe OmniAuth::Strategies::Vimeo do
  subject do
    OmniAuth::Strategies::Vimeo.new({})
  end

  context "client options" do
    it 'should have correct name' do
      expect(subject.options.name).to eq("vimeo")
    end

    it 'should have correct authorize url' do
      expect(subject.options.client_options.authorize_path).to eq('/oauth/authorize')
    end

    it 'should have correct request url' do
      expect(subject.options.client_options.request_token_path).to eq('/oauth/request_token')
    end

    it 'should have correct access url' do
      expect(subject.options.client_options.access_token_path).to eq('/oauth/access_token')
    end

    it 'should have correct site' do
      expect(subject.options.client_options.site).to eq("https://vimeo.com")
    end
  end
end
