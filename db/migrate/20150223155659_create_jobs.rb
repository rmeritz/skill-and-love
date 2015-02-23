class CreateJobs < ActiveRecord::Migration
  def self.up
    create_table :jobs do |t|
      t.text :name, null: false
      t.text :description, null: false
      t.text :company_name, null: false
      t.text :url, null: false
      t.datetime :start_date
      t.datetime :end_date
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :jobs
  end
end
