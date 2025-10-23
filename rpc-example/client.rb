require 'drb'

# Connect to the remote DRb service
remote_service = DRbObject.new(nil, 'druby://localhost:9000')

# Call remote methods as if they were local
puts remote_service.greet("Alice")
puts "2 + 3 = #{remote_service.add(2, 3)}"
