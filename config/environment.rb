# Load the rails application.
require File.expand_path('../application', __FILE__)

# Initialize the rails application.
SFD2013::Application.initialize!
secret = ENV['CAPTCHA_SECRET'] || "c076e45c99cc5433092f88dd762352f0ea7250ce49e46d2a58334a7650b5d787d916d2b4bb8bf0a53b84726657c0a9cdab3ad8b9923f0f69a3b87be54c70c377"
NEGATIVE_CAPTCHA_SECRET = secret
