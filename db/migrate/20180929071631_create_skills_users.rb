class CreateSkillsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :skills_users do |t|
      t.references :skill, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
