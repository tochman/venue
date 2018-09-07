class User < ApplicationRecord
  after_initialize :set_default_role, :if => :new_record?

  has_many :campaigns

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: { artist: 0, fan: 1 }

  def set_default_role
    self.role ||= :fan
  end
end