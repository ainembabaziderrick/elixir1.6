defmodule MyList do
  def len([]), do: 0

  def len([_head | tail]), do: 1 + len(tail)

  def square([]), do: []

  def square([head | tail]), do: [head * head | square(tail)]

  def add_1([]), do: 0

  def add_1([head | tail]), do: [head + 1 | add_1(tail)]

  def map([], _func), do: []

  def map([head | tail], func), do: [func.(head) | map(tail, func)]

  def reduce([], value, _) do
    value
  end

  def reduce([head | tail], value, func) do
    reduce(tail, func.(head, value), func)
  end

  def mapsum([], _func), do: 0

  def mapsum([head | tail], func), do: func.(head) + mapsum(tail, func)

  def maximum([]), do: nil

  def maximum([head | tail]), do: maximum(tail, head)

  defp maximum([], current_max), do: current_max

  defp maximum([head | tail], current_max) do
    if head > current_max do
      maximum(tail, head)
    else
      maximum(tail, current_max)
    end
  end

  def ceasar([], _), do: []

  def ceasar([head | tail], shift) do
    new_char = if head + shift > ?z, do: head + shift - 26, else: head + shift
    [new_char | ceasar(tail, shift)]
  end
  
end
