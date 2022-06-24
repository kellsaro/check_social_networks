# == Schema Information
#
# Table name: instagram_photos
#
#  id         :integer          not null, primary key
#  picture    :string
#  username   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe InstagramPhoto, type: :model do
  describe "Validations" do
    it { should validate_presence_of(:username) }
    it { should validate_presence_of(:picture) }
  end
end
