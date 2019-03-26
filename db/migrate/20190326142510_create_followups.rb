class CreateFollowups < ActiveRecord::Migration[5.2]
  def change
    create_table :followups do |t|
      t.integer :number
      t.string :contact
      t.string :mode
      t.belongs_to :job, foreign_key: true
      t.timestamps
    end
  end
end
