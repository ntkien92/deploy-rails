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

class User < ApplicationRecord
	has_secure_password

	enum gender: %w(male female gay les other)

	validates :user_name, :email, uniqueness: true
	validates :user_name, :password, presence: true
	validates :email, presence: true, :if => Proc.new { provider == 'email' }
	validates :name, length: { in: 6..30 }, allow_blank: true
	validate :birthday_validate
	validates :uid, uniqueness: { scope: :provider}

	has_many :my_carts, class_name: 'Cart'

	def birthday_validate
		self.errors.add(:birthday, 'must be over 16 years old') if birthday.present? && Time.now - 16.years < birthday
	end
end
