class Investor < ApplicationRecord
  REQUIRED_ATTRIBUTES = %i[
    address_city address_state address_street address_zipcode date_of_birth
    first_name last_name phone_number social_security_number
  ].freeze

  validates *REQUIRED_ATTRIBUTES, presence: true

  belongs_to :user, inverse_of: 'investors'
end
