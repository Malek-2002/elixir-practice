defmodule HighScore do
  def new() do
    %{}
  end

  def add_player(scores, name, score \\ 0) do
    Map.put(scores, name, score)
  end

  def remove_player(scores, name) do
    Map.delete(scores, name)
  end

  def reset_score(scores, name) do
    Map.put(scores, name, 0)
  end

  def update_score(scores, name, score) do
    Map.put_new(scores, name, 0)
    curr_score = Map.get(scores, name, 0)
    Map.put(scores, name, curr_score + score)
  end

  def get_players(scores) do
    Map.keys(scores)
  end
end
