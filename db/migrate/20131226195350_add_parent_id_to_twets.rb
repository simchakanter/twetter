class AddParentIdToTwets < ActiveRecord::Migration
  def change
    add_column :twets, :parent_id, :integer
  end
end
