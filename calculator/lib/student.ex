defmodule Student do
	@moduledoc """
	Define a Student struct and functions to handle a student.
	"""
  
	defstruct name: nil, results: [] 

	@doc """	
	Get the first name of a Student.
	
	## Parameters
	- `student` - A Student struct.
	
	## Examples
	*  joao = %Student{name: "João Joaquim"}
	*  Student.first_name(joao)
	* "João"
	"""

	def first_name(student) do
		student.name
		|> String.split
		|> List.first
	end


	@doc """
	Get the last name of a Student

	## Parameters
	- `student` - A student struct.

	## Examples
	* livia = %Student{name: "Livia Almeida"}
	* Student.last_name(livia)
	* "Almeida"
	""" 

	def last_name(student) do
		student.name
			|> String.split
			|> List.last	
	end
end
