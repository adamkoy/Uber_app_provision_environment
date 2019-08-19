#
# Cookbook:: python
# Spec:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'python::default' do
  context 'When all attributes are default, on Ubuntu 18.04' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'ubuntu', '18.04'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'installs the package python' do
      expect(chef_run).to install_package('python')
    end

    it 'installs the package python-pip' do
      expect(chef_run).to install_package('python-pip')
    end

    it 'installs the package libncurses5-dev' do
      expect(chef_run).to install_package('libncurses5-dev')
    end

    it 'installs the package libffi-dev' do
      expect(chef_run).to install_package('libffi-dev')
    end


    it 'provides Flask plugin' do
        expect(chef_run).to run_execute('pip install Flask==0.10.1')
    end
    it 'provides Jinja2 plugin' do
        expect(chef_run).to run_execute('pip install Jinja2==2.7.3')
   end
    it 'provides MarkupSafe plugin' do
      expect(chef_run).to run_execute('pip install MarkupSafe==0.23')
    end
    it 'provides Werkzeug plugin' do
    expect(chef_run).to run_execute('pip install Werkzeug==0.9.6')
   end
    it 'provides gnureadline plugin' do
      expect(chef_run).to run_execute('pip install gnureadline==6.3.3')
    end
    it 'provides itsdangerous plugin' do
      expect(chef_run).to run_execute('pip install itsdangerous==0.24')
    end
    it 'provides rauth plugin' do
      expect(chef_run).to run_execute('pip install rauth==0.7.0')
    end
    it 'provides requests plugin' do
      expect(chef_run).to run_execute('pip install requests==2.3.0')
    end

    it 'provides wsgiref plugin' do
      expect(chef_run).to run_execute('pip install wsgiref==0.1.2')
    end

    it 'provides gunicorn plugin' do
      expect(chef_run).to run_execute('pip install gunicorn==18.0')
    end
    it 'provides Flask-SSLify plugin' do
      expect(chef_run).to run_execute('pip install Flask-SSLify==0.1.4')
    end
end
end
