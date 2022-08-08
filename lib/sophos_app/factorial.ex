defmodule SophosApp.Factorial do
	def of(0), do: 1
	def of(n) when n > 0, do: n * of(n - 1)	
end

defmodule SophosApp.Fibonacci do	
	def fibonacci(0), do: 0
	def fibonacci(1), do: 1
	
	def fibonacci(n) do 
		fibonacci(n-1) + fibonacci(n-2)	
	end
end