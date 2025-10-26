defmodule TakeANumber do
  def machine(state \\ 0) do
    receive do
      {:take_a_number, pid} ->
        new_state = state + 1
        send(pid, new_state)
        machine(new_state)

      {:report_state, pid} ->
        send(pid, state)
        machine(state)

      :stop ->
        :ok

      _ ->
        machine(state)
    end
  end

  def start() do
    spawn(TakeANumber, :machine, [])
  end
end
