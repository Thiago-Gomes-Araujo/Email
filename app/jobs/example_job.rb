class ExampleJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts 'Hello World!'
    # Do something later
  end
end
