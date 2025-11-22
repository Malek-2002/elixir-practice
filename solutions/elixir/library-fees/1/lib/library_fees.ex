defmodule LibraryFees do
  def datetime_from_string(string) do
    NaiveDateTime.from_iso8601!(string)
  end

  def before_noon?(datetime) do
    datetime.hour < 12
  end

  def return_date(checkout_datetime) do
    days =
      if before_noon?(checkout_datetime),
        do: 28,
        else: 29

    checkout_datetime
    |> NaiveDateTime.to_date()
    |> Date.add(days)
  end

  def days_late(planned_return_date, actual_return_datetime) do
    actual_date = NaiveDateTime.to_date(actual_return_datetime)

    case Date.diff(actual_date, planned_return_date) do
      diff when diff > 0 -> diff
      _ -> 0
    end
  end

  def monday?(datetime) do
    datetime
    |> NaiveDateTime.to_date()
    |> Date.day_of_week() == 1
  end

  def calculate_late_fee(checkout, return, rate) do
    checkout_dt = datetime_from_string(checkout)
    return_dt   = datetime_from_string(return)

    planned = return_date(checkout_dt)
    late_days = days_late(planned, return_dt)

    fee = late_days * rate

    if monday?(return_dt) do
      div(fee, 2)
    else
      fee
    end
  end
end
