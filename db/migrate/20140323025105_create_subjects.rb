class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
    t.string   "provider"
    t.integer  "uid"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"

    t.timestamps
    end
  end
end
