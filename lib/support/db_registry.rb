require_relative "./connection_adapter.rb"

DBRegistry ||= OpenStruct.new(test: ConnectionAdapter.new("db/#{DB}-test.db"),
  development: ConnectionAdapter.new("db/#{DB}-development.db"),
  production: ConnectionAdapter.new("db/#{DB}-production.db")
  )
