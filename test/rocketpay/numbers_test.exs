defmodule Rocketpay.NumbersTest do
  use ExUnit.Case

  alias Rocketpay.Numbers

  describe "sumFromFile/1" do
    test "when there is a file with the given name, returns the sum of numbers" do
      response = Numbers.sumFromFile("numbers")

      expectedResponse = {:ok, %{result: 37}}

      assert response == expectedResponse
    end

    test "when there is no a file with the given name, returns an error" do
      response = Numbers.sumFromFile("no-existing-file")

      expectedResponse = {:error, %{message: "Invalid file!"}}

      assert response == expectedResponse
    end
  end
end
