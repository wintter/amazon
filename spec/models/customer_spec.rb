require 'rails_helper'

RSpec.describe Customer, type: :model do

    let(:subject) { FactoryGirl.create(:customer) }

    it { expect(subject).to validate_presence_of(:email) }
    it { expect(subject).to validate_presence_of(:password) }
    it { expect(subject).to validate_presence_of(:firstname) }
    it { expect(subject).to validate_presence_of(:lastname) }

    it { expect(subject).to have_many :ratings }
    it { expect(subject).to have_many :orders }

end
