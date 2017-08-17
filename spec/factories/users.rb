# frozen_string_literal: true

FactoryGirl.define do
  factory :user do
    nickname 'MyString'
    mastodon_server nil
    bearer_token 'MyString'
  end
end
