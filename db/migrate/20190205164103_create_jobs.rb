class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :company
      t.string :position
      t.string :status
      t.string :link

      t.timestamps
    end
  end
end
