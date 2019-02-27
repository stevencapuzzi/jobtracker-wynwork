class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :company
      t.string :position
      t.string :status
      t.string :link
      t.belongs_to :applicant, foreign_key: true
      t.timestamps
    end
  end
end
