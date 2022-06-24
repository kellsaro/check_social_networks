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
  pending "add some examples to (or delete) #{__FILE__}"
end
