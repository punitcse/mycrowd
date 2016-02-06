class RemoveInstructionFromTest < ActiveRecord::Migration
  def change
    remove_column :tests, :instruction
  end
end
