class Oki < ActiveRecord::Migration
  def change
    create_table :paths do |t|
      t.string "name"
      t.integer "user_id"
      t.integer "threadhead_id"
    end

    create_table :users do |t|
      t.string "name"
    end

    create_table :threadheads do |t|
      t.string "name"
    end
  end
end
