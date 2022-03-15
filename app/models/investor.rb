class Investor < ApplicationRecord
  REQUIRED_ATTRIBUTES = %i[
    address_city address_state address_street address_zipcode date_of_birth
    document first_name last_name phone_number social_security_number
  ].freeze

  validates *REQUIRED_ATTRIBUTES, presence: true
  validates :social_security_number, uniqueness: true
  has_one_attached :document

  belongs_to :user, inverse_of: 'investors'

  def full_name
    "#{first_name} #{last_name}"
  end
end
