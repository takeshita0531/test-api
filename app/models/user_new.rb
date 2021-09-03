class UserNew < ApplicationRecord
  has_secure_token :token
end
