class CreateBs < ActiveRecord::Migration
  def change
    create_table :bs do |t|
      t.string :b

      t.timestamps
    end
  end
end
