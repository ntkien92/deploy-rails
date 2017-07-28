# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  user_name       :string(255)
#  email           :string(255)
#  name            :string(255)
#  birthday        :datetime
#  gender          :integer
#  password_digest :text(65535)
#  role            :integer          default(0)
#  avatar          :string(255)
#  provider        :string(255)
#  uid             :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
