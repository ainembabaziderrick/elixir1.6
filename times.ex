defmodule Times do

# def double(n) do
#   n * 2
# end

def double(n), do: n*2

def greet(greeting, name), do: (
IO.puts greeting
IO.puts "How are you doing, #{name}!"
)

def triple(n) do
  n*3
end

def quadruple(n) do
  double(n) * 2
end
end
