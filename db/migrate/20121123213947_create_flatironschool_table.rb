class CreateFlatironschoolTable < ActiveRecord::Migration
  def up
    create_table :flatironschools do |t|
      t.boolean :status
      t.datetime :created_at
    end
    Flatironschool.create(:status => "1")
    Flatironschool.create(:status => "0")
  end

  def down
    drop_table :flatironschools
  end
end
