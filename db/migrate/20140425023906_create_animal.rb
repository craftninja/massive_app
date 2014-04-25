class CreateAnimal < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.string :diet
    end
  end
end
