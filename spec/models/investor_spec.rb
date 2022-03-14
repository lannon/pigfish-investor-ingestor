require 'rails_helper'

RSpec.describe Investor, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:address_city) }
    it { should validate_presence_of(:address_state) }
    it { should validate_presence_of(:address_street) }
    it { should validate_presence_of(:address_zipcode) }
    it { should validate_presence_of(:date_of_birth) }
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:phone_number) }
    it { should validate_presence_of(:social_security_number) }
  end
end
