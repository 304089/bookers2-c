class Group < ApplicationRecord

  attachment :image

  has_many :group_users, dependent: :destroy
  has_many :users, through: :group_users

  has_many :group_owners,dependent: :destroy
  has_many :users, through: :group_owners

end
