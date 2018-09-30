class User < ApplicationRecord
  has_many :skills_users
  has_many :skills, through: :skills_users
end
