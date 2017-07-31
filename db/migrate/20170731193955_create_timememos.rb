class CreateTimememos < ActiveRecord::Migration[5.0]
  def change
    create_table :timememos do |t|
      t.string :time
      t.string :place
      t.string :content

      t.timestamps
    end
  end
end
