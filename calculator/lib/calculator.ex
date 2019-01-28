defmodule Calculator do
  @moduledoc """
  Documentation for Calculator.
  """

	@doc  """
	Start the system to process some result.
	"""
	def start() do
		livia = %Student{name: "Livia Almeida", results: build_subjects([10, 3.5, 6.7, 8.9])}
		joao  = %Student{name: "João Joaquim", results: build_subjects([5.2, 3.9, 2.7, 9.8])}
		maria = %Student{name: "Maria Joaquina", results: build_subjects([3.4, 5.6, 7.8, 9])}
		lourdes = %Student{name: "Lourdes Maria", results: build_subjects([5.5, 6.6, 7.7, 8.8])}

		resultado = calculate([livia, joao, maria, lourdes])
		best = best_result(resultado)

		{resultado, best}
	end
		
	def average(student) do
		total = Enum.count(student.results)
		
		resultado = student.results
								|> Enum.map(&(&1.result))
								|> Enum.reduce(&(&1 + &2))
		
		Float.ceil(resultado / total, 2)
	end

	def calculate(students) do 
		students
			|> Enum.map(
				&(%{
					first_name: Student.first_name(&1),
					last_name:  Student.last_name(&1),
					average: average(&1)
				})
			)
	end

	def best_result(students) do 
		best = students
		|> Enum.map(&(&1.average))
		|> Enum.max

		students
		|> Enum.filter(&(&1.average === best))
	end

	defp build_subjects(results) do
		subjects = ["Matemática", "Português", "Geografia", "História"]
		
		subjects
		|> Enum.map(&(%Subject{name: &1, result: Enum.random(results)}))
  end
 
end

