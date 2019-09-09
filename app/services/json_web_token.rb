class JsonWebToken
  class << self
    def encode(payload)
      payload.merge!(exp: 30.minutes.from_now.to_i)
      JWT.encode(payload, Rails.application.credentials.secret_key_base)
    end

    def decode(token)
      JWT.decode(token, Rails.application.credentials.secret_key_base).first
    end
  end
end
