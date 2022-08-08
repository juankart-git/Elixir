defmodule SophosApp.Math do
	@moduledoc """
	Implementacion basica del modulo de matematicas de Sophos
	"""
	@pi 3.14159
	
	@doc """
	Suma dos numeros cuales quiera
	"""
	
	def sum(a,b) do
		a + b
	end
	
	def kind(n) when n < 0, do: :negative
	def kind(0), do: :zero
	def kind(n) when n > 0, do: :positive
end

defmodule SophosApp.Geometry do
	def area(a, b), do: a + b
end