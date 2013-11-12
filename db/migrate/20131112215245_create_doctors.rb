class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :status
      t.string :phone
      t.references :specialty

      t.timestamps
    end
    add_index :doctors, :specialty_id
  end
end
