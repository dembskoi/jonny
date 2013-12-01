class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.string :phone_number
      t.string :location

      t.timestamps
    end
  end
end
