if ENV['ASSET_COMPILE'].blank?
  Rails.configuration.stripe = {
    :publishable_key => Rails.application.credentials.stripe_test[:publishable_key],
    :secret_key => Rails.application.credentials.stripe_test[:secret_key]
  }

  Stripe.api_key = Rails.configuration.stripe[:secret_key]
end
