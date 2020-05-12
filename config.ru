# frozen_string_literal: true

require './app'
run Redirect.new(
  HelloWorld.new,
  from: '/',
  to: '/hello'
)
