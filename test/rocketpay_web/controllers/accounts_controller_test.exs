defmodule RocketpayWeb.AccountsControllerTest do
  use RocketpayWeb.ConnCase, async: true

  alias Rocketpay.{Account, User}

  describe "deposit/2" do
    setup %{conn: conn} do
      params = %{
        name: "Gabriel",
        password: "123456",
        nickname: "Mito",
        email: "gabriel@gmail.com",
        age: 21
      }

      conn = put_req_header(conn, "authorization", "Basic Z2FicmllbDoxMjM0NTY=")

      {:ok, %User{account: %Account{id: account_id}}} = Rocketpay.create_user(params)

      {:ok, conn: conn, account_id: account_id}
    end

    test "when all params all valid, make the deposit", %{conn: conn, account_id: account_id} do
      params = %{"value" => "50.00"}

      response = conn
      |> post(Routes.accounts_path(conn, :deposit, account_id, params))
      |> json_response(:created)

      assert %{
        "account" => %{"balance" => "50.00", "id" => _id},
        "message" => "Balance changed succesfully"
      } = response
    end

    test "when there are invalid params, returns an error", %{conn: conn, account_id: account_id} do
      params = %{"value" => "invalid"}

      response = conn
      |> post(Routes.accounts_path(conn, :deposit, account_id, params))
      |> json_response(:bad_request)

      expected_response = %{"message" => "Invalid deposit value!"}

      assert response == expected_response
    end
  end
end
