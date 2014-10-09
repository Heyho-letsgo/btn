class CreateVisiteurs < ActiveRecord::Migration
  def change
    create_table :visiteurs do |t|
      t.string :email

      t.timestamps
    end
  end
end
