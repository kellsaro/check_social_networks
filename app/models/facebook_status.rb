# == Schema Information
#
# Table name: facebook_statuses
#
#  id         :integer          not null, primary key
#  name       :string
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class FacebookStatus < ApplicationRecord
end
