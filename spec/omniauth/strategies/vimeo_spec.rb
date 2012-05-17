require 'spec_helper'

describe OmniAuth::Strategies::Vimeo do
  subject do
    OmniAuth::Strategies::Vimeo.new({})
  end

  context "client options" do
    it 'should have correct name' do
      subject.options.name.should eq("vimeo")
    end

    it 'should have correct authorize url' do
      subject.options.client_options.authorize_path.should eq('/oauth/authorize')
    end

    it 'should have correct request url' do
      subject.options.client_options.request_token_path.should eq('/oauth/request_token')
    end

    it 'should have correct access url' do
      subject.options.client_options.access_token_path.should eq('/oauth/access_token')
    end

    it 'should have correct site' do
      subject.options.client_options.site.should eq("https://vimeo.com")
    end
  end
end
