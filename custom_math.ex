defmodule CustomMath do
  @moduledoc """
  Basic arithmetic operations methods.

  Copyright 2016 by Andrei Helo.
  """
  @vsn 0.1

  @doc """
  Addition arithmetic operation.

  ie. addition(2, 2) :: 4
  """
  @spec addition(Integer, Integer) :: Integer
  def addition(x, y) do
    x + y
  end

  @doc """
  Subtraction arithmetic operation.
  """
  @spec subtraction(Integer, Integer) :: Integer
  def subtraction(x, y) do
    x - y
  end

  @doc """
  Multiplication arithmetic operation.
  """
  @spec multiplication(Integer, Integer) :: Integer
  def multiplication(_, 0) do
    0
  end

  @doc """
  Multiplication arithmetic operation.
  """
  @spec multiplication(Integer, Integer) :: Integer
  def multiplication(x, y) do
    x + multiplication(x, y - 1)
  end

  @doc """
  Division arithmetic operation.
  """
  @spec division(Integer, Integer) :: Integer
  def division(_, 0) do
    :error
  end

  @doc """
  Division arithmetic operation.
  """
  @spec division(Integer, Integer) :: Integer
  def division(dividend, divisor) when dividend < divisor do
    0
  end

  @doc """
  Division arithmetic operation.
  """
  @spec division(Integer, Integer) :: Integer
  def division(dividend, divisor) do
    1 + division(dividend - divisor, divisor)
  end
end
