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

    it 'provides Flask' do
        expect(chef_run).to run_execute('pip install Flask==0.10.1')
    end
  end
end


    #
    #
    #
    # execute 'python-pip install plugins' do
    #   command 'pip install Flask==0.10.1'
    # end
    #
    # execute 'python-pip install plugins' do
    #   command 'pip install Jinja2==2.7.3'
    # end
    #
    # execute 'python-pip install plugins' do
    #   command 'pip install MarkupSafe==0.23'
    # end
    #
    # execute 'python-pip install plugins' do
    #   command 'pip install Werkzeug==0.9.6'
    # end
    #
    # execute 'python-pip install plugins' do
    #   command 'pip install gnureadline==6.3.3'
    # end
    #
    # execute 'python-pip install plugins' do
    #   command 'pip install itsdangerous==0.24'
    # end
    #
    # execute 'python-pip install plugins' do
    #   command 'pip install rauth==0.7.0'
    # end
    #
    # execute 'python-pip install plugins' do
    #   command 'pip install requests==2.3.0'
    # end
    #
    # execute 'python-pip install plugins' do
    #   command 'pip install gunicorn==18.0'
    # end
    #
    # execute 'python-pip install plugins' do
    #   command 'pip install Flask-SSLify==0.1.4'
    # end
    #
    # execute 'python-pip install plugins' do
    #   command 'pip install pytest==2.5.2'
    # end
    #
    # execute 'python-pip install plugins' do
    #   command 'pip install pytest-cov==1.6'
    # end
    #
    # execute 'python-pip install plugins' do
    #   command 'pip install betamax==0.4.0'
    # end
    #
    # execute 'python-pip install plugins' do
    #   command 'pip install flake8==2.1.0'
    # end
    #
    # execute 'python-pip install plugins' do
    #   command 'pip install pep8==1.5.6'
    # end
    #
    # execute 'python-pip install plugins' do
    #   command 'pip install pyflakes==0.8.1'
    # end
    #
    # execute 'python-pip install plugins' do
    #   command 'pip install coveralls==0.4.2'
    # end
    #
    #
    #
