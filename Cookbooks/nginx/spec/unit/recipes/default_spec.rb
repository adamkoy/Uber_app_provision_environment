#
# Cookbook:: nginx
# Spec:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'nginx::default' do
  context 'When all attributes are default, on Ubuntu 18.04' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'ubuntu', '18.04'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end

  # context 'When all attributes are default, on CentOS 7' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end


it 'should install nginx' do
  expect(chef_run).to enable_service 'nginx'
end

it 'should start the nginx service' do
  expect(chef_run).to start_service 'nginx'
end

it 'should create proxy.conf template in etc/nginx/sites-available' do
  expect(chef_run).to create_template('/etc/nginx/sites-available/proxy.conf').with_variables(proxy_port:3000)
end

it 'should delete the symlink from the default config in sites-enabled' do
  expect(chef_run).to delete_link('/etc/nginx/sites-enabled/default')
end

it 'should create a symblink of proxy.conf from sites-available to sites-enabled' do
      expect(chef_run).to create_link('/etc/nginx/sites-enabled/proxy.conf').with_link_type(:symbolic)
    end

end
