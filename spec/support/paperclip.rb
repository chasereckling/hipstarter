require 'paperclip/railtie'

RSpec.configure do |config|
  # Bind paperclip to enable ActiveRecord #has_attached_file method
  Paperclip::Railtie.insert
	config.include Paperclip::Shoulda::Matchers
end
