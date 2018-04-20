class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.column :title, :varchar
      t.column :company, :varchar
      t.column :post_date, :date
      t.column :rating, :integer
      t.column :location, :varchar
      t.column :url, :varchar
    end
  end
end
