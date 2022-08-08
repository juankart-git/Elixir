defmodule SophosApp.MyList do
	def sum(list) do
		sum(list, 0)
	end
	
	defp sum([h | t], n), do: sum(t, n + h)
	defp sum([], n), do: n
	
	def filter_current_files() do                                                               
		"."                                                                                       
		|> Path.join("**/*.ex")                                                                   
		|> Path.wildcard()                                                                        
		|> Enum.filter(fn f ->                                                                    
		  String.contains?(Path.basename(f), "application")                                       
		end)                                                                                      
	end
	
	def generate(n) when n > 0 do
		generate(n, [])
	end
	
	defp generate(0, list), do: list
	defp generate(n, list), do: generate(n - 1, [n | list])
	
	
###  Counter List   ###
	def counterList(list) do
		counterList(list, 0)
	end
	defp counterList([], n), do: n
	defp counterList([_ | t], n), do: counterList(t, n + 1 )
	
	
###  Modify List, return (element * element)   ###
	def modifyList(list) do
		modifyList(list, [])
	end
	
	defp modifyList([], list), do: list
	defp modifyList([h | t], list), do: modifyList(t, list ++ [h*h])	
	
end

defmodule SophosApp.FizzBuzz do
	alias SophosApp.MyList
	
	def exec(n) do
		MyList.generate(n)
	end
	
	def exec2(n) do
		MyList.generate(n)
	end
end