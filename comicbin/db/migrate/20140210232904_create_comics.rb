class CreateComics < ActiveRecord::Migration
  def change
    create_table :comics do |t|
		t.string   "title"
		t.integer  "issueNum"
		t.datetime "created_at"
		t.datetime "updated_at"
		t.string   "image"
		t.text     "description"
    end
  end
end
