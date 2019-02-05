class CreateApplicants < ActiveRecord::Migration[5.2]
  def change
    create_table :applicants do |t|
      t.string :name
      t.string :cohort
      t.string :email
      t.string :phone
      t.text :bio
      t.string :linkedin
      t.stringportfolio :github

      t.timestamps
    end
  end
end
