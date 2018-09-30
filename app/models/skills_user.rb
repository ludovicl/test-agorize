class SkillsUser < ApplicationRecord
  belongs_to :skill
  belongs_to :user
  validate :already_has_skill?

  def already_has_skill?
    errors.add(:base, "User already has a skill") if user.persisted? && user.skills.any?
  end
end
