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
require 'rails_helper'

RSpec.describe FacebookStatus, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
