# frozen_string_literal: true

class Redirect
  def initialize(app, from:, to:)
    @app = app
    @from = from
    @to = to
  end

  def call(env)
    if env['PATH_INFO'] == @from
      [301, { 'Location' => @to }, []]
    else
      @app.call(env)
    end
  end
end

class HelloWorld
  def call(env)
    if env['PATH_INFO'] == '/hello'
      [200, { 'Content-Type' => 'text/plain' }, ['Hello World']]
    else
      [404, { 'Content-Type' => 'text/plain' }, ['Not Found']]
    end
  end
end
