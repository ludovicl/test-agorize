module SkillsAggregation
  def self.perform
    Skill.includes(:users).get_parents.map do |skill|
      {
        name: skill.name,
        points: skill.points + skill.children.includes(:users).sum(&:points),
        users_count:  skill.number_of_use + skill.children.includes(:users).sum(&:number_of_use)
      }
    end
  end
end