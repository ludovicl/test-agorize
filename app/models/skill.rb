class Skill < ApplicationRecord
  belongs_to :parent, class_name: 'Skill', foreign_key: 'parent_id', optional: true
  has_many :children, class_name: 'Skill', foreign_key: 'parent_id'
  has_many :skills_users
  has_many :users, through: :skills_users
  validate :already_parent?
  scope :get_parents, -> { where(parent_id: nil) }

  def points
    users.sum(&:points)
  end

  def number_of_use
    users.length
  end

  def already_parent?
    errors.add(:base, "This skill can't be child cause it's already a parent") if children.any?
  end
end
