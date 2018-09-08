class ApiVersionConstraint
	def initialize(options)
		@version = options[:version]
	end

	def matches?(req)
		req.headers['Accept'].include?("application/vnd.taskmanagar.v#{@version}")
	end
end