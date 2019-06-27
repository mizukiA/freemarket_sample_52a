require_relative 'boot'

require 'rails/all'
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module FreemarketSample52a
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
<<<<<<< Updated upstream

    # config.i18n.default_locale = :ja
=======
    config.i18n.default_locale = :ja
>>>>>>> Stashed changes
  end
end
