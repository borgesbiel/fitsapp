class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, uniqueness: true

  has_many :conversations, foreign_key: :sender_id

  TYPES = %w(User Trainer).freeze

  scope :not_admin, -> { where(admin: false) }
end
