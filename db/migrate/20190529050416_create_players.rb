class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
		t.string :name
		t.text :time
		t.string :moment
	  	t.timestamps
    end
  end
end
