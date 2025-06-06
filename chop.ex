defmodule Chop do
  require Logger

  def guess(actual, range), do: _guess(actual, range.first, range.last)

  def _guess(actual, low, high) when div(low + high, 2) == actual do
    guess = div(low + high, 2)
    Logger.warning("Is it #{guess}")
    guess
  end

  def _guess(actual, low, high) when div(low + high, 2) > actual do
    guess = div(low + high, 2)
    Logger.error("Is it #{guess}")
    _guess(actual, low, guess - 1)
  end

  def _guess(actual, low, high) when div(low + high, 2) < actual do
    guess = div(low + high, 2)
    Logger.info("Is it #{guess}")
    _guess(actual, guess + 1, high)
  end
end
