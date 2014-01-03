class AddAIdToB < ActiveRecord::Migration
  def change
    add_column :bs, :a_id, :integer
  end
end
