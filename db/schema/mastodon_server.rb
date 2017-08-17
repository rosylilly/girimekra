# frozen_string_literal: true

create_table :mastodon_servers, force: :cascade do |t|
  t.string :domain, null: false
  t.string :client_id, null: false
  t.string :client_secret, null: false

  t.datetime :created_at, null: false
  t.datetime :updated_at, null: false

  t.index :domain, unique: true
end
