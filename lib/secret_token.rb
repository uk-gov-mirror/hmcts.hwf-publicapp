# frozen_string_literal: true
class SecretToken
  def self.generate
    Rails.env.production? ? ENV['SECRET_TOKEN'] : ('a' * 30)
  end
end
