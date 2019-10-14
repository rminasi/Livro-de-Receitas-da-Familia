class CreateNames < ActiveRecord::Migration[5.2]
  def change
    create_table :names do |t|
      t.string :photo
      t.text :description

      t.timestamps
    end
  end
end
