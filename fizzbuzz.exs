fizzbuzz = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, n -> n
end

IO.puts fizzbuzz.(0, 0, 123)
IO.puts fizzbuzz.(0, 1, 123)
IO.puts fizzbuzz.(1, 0, 123)
IO.puts fizzbuzz.(1, 2, "Hello")
IO.puts fizzbuzz.(1, 2, 123)

fizzbuzz_rem = fn
  n -> fizzbuzz.(rem(n, 3), rem(n, 5), n)
end

IO.puts fizzbuzz_rem.(10)
IO.puts fizzbuzz_rem.(11)
IO.puts fizzbuzz_rem.(12)
IO.puts fizzbuzz_rem.(13)
IO.puts fizzbuzz_rem.(14)
IO.puts fizzbuzz_rem.(15)
IO.puts fizzbuzz_rem.(16)
