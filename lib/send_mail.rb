require 'rails'
require 'action_mailer'
require 'yaml'
require 'haml'
require 'haml/template'
require 'haml/template/plugin'
require File.expand_path('../send_mail/mailer', __FILE__)

# 设置 view
ActionMailer::Base.view_paths = File.expand_path('../../views',__FILE__)


config = YAML.load_file(File.expand_path('../../config.yaml',__FILE__))

address = config['address']
port = config['port']
user_name = config['user_name']
password = config['password']
FROM_EMAIL = config['from_email']

ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address              => address,
  :port                 => port,
  :user_name            => user_name,
  :password             => password,
  :authentication       => 'plain',
  :enable_starttls_auto => true
}



