# frozen_string_literal: true

create_table :users, force: :cascade do |t|
  t.string :uid, null: false
  t.string :nickname, null: false
  t.belongs_to :mastodon_server, null: false, index: true
  t.string :bearer_token, null: false

  t.datetime :created_at, null: false
  t.datetime :updated_at, null: false

  t.index %i[uid mastodon_server_id], unique: true
end
