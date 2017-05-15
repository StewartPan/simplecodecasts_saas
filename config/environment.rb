# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :port           => '587',
  :address        => 'smtp.sendgrid.net',
  :user_name      => ENV['MAILGUN_SMTP_LOGIN'],
  :password       => ENV['MAILGUN_SMTP_PASSWORD'],
  :domain         => 'heroku.com',
  :authentication => :plain,
  :enable_startstls_auto => true
}

ActionMailer::Base.delivery_method = :smtp