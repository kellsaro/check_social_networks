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
class InstagramPhoto < ApplicationRecord
end
