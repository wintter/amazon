require 'rails_helper'

RSpec.describe Country, type: :model do

  it { expect(subject).to validate_presence_of(:name) }

end
