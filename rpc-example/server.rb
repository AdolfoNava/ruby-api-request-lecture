require 'drb'

# Define a class or object that will be exposed remotely
class MyService
  def greet(name)
    "Hello, #{name} from the DRb server!"
  end

  def add(a, b)
    a + b
  end
end

# Create an instance of the service
my_service = MyService.new

# Start the DRb service, exposing the `my_service` object
DRb.start_service('druby://localhost:9000', my_service)
puts "DRb server running on druby://localhost:9000"

# Keep the server running
DRb.thread.join
