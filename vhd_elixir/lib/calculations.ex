defmodule Calculations do 
	def calculate_final_matrix(input, channel) do
		joint = calculate_joint_distribution(input, channel)
		marginal = calculate_marginal_distribution(joint)
		calculate_posterior_distribution(marginal, joint)
			|> calculate_hyper_distribution
	end

	defp calculate_joint_distribution(input, channel) do 
		:ok
	end

	defp calculate_marginal_distribution(joint) do
		:ok
	end

	defp calculate_posterior_distribution(marginal, joint) do 
		:ok
	end

	defp calculate_hyper_distribution(posterior) do 
		:ok
	end
end
