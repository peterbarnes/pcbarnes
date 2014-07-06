# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.sendgrid.net',
  :port           => '587',
  :authentication => :plain,
  :user_name      => ENV['SENDGRID_USERNAME'],
  :password       => ENV['SENDGRID_PASSWORD'],
  :domain         => 'www.pcbarnes.com',
  :enable_starttls_auto => true
}

Tumblr.configure do |config|
  config.consumer_key = "VHi5mlwIOZPNnNPPJHDPFkXwGA6YW7R1nE1igPp0bgqYwoCxJp"
  config.consumer_secret = "a6lNgqp2JSPUciRPVzrMiSdbMfUQrLFitOcB7bemoY2I5rCIET"
end