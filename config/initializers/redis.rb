if Rails.env.production?
    $redis = Redis.new(url: ENV['REDIS_URL'])
  else
    redis_config = Rails.application.config_for(:redis).symbolize_keys
    $redis = Redis.new(redis_config)
  end