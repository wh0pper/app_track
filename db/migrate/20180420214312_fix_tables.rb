class FixTables < ActiveRecord::Migration[5.2]
  def change
    add_column :steps, :job_id, :integer
  end
end
