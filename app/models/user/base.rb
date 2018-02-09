module User
  class Base < ApplicationRecord
    self.table_name = 'users'

    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable

    # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    # validates :email, presence:   true,
    #           format:     { with: VALID_EMAIL_REGEX }
    # validates :email, uniqueness: { case_sensitive: false, scope: [:type, :client_code] }, on: :create

    # validates_presence_of :name

    USER_TYPES = {
      'super_admin': 'User::SuperAdmin',
      'member': 'User::Member',
      'consultant': 'User::Consultant',
      'employee': 'User::Employee'
    }

    USER_TYPES.each do |key, value|
      define_method("#{key}?") do
        type == value
      end

      scope key.to_sym, -> { where(type: value) }
    end
  end
end