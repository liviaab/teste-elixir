defmodule Schizo do
  @moduledoc """
  This is a module that provides odd behaviour for transforming every other word
  in a string.

  Here are some examples:

      iex> Schizo.uppercase("this is an example")
      "this IS an EXAMPLE"

      iex> Schizo.unvowel("this is an example")
      "this s an xmpl"

  """

  def uppercase(string) do
    string
			|> every_other_word(&String.upcase/1)
	end

	def unvowel(string) do
    string
			|> every_other_word(&remove_vowels/1)
	end

	def every_other_word(string, function) do
		string
			|> String.split(" ")
			|> Enum.with_index
			|> Enum.map(fn({word, index}) ->
					if rem(index, 2) != 0 do 
						function.(word)
					else
						word
					end
			end)
			|> Enum.join(" ")
	end

	def remove_vowels(word) do
		Regex.replace(~r/[aeiou]/, word, "")
	end
end
