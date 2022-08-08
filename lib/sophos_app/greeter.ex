defmodule SophosApp.Greeter do
	def hello(), do: "Hello anon person"
	def hello(name), do: "Hello, " <> name
	def hello(name1, name2), do: "Hello  #{name1} and #{name2}"
end