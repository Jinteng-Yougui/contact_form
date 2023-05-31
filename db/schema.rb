ActiveRecord::Schema.define(version: 2023_05_31_044315) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.text "email"
    t.text "content"
  end

end
