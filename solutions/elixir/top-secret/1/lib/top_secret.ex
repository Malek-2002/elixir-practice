defmodule TopSecret do
  def to_ast(string) do
    Code.string_to_quoted!(string)
  end

  def decode_secret_message_part({op, _, [{:when, _, [head | _]} | _]} = ast, acc)
      when op in [:def, :defp] do
    {ast, add_name_prefix(head, acc)}
  end

  def decode_secret_message_part({op, _, [head | _]} = ast, acc)
      when op in [:def, :defp] do
    {ast, add_name_prefix(head, acc)}
  end

  def decode_secret_message_part(ast, acc), do: {ast, acc}

  def decode_secret_message(string) when is_binary(string) do
    string
    |> to_ast()
    |> decode_secret_message()
  end

  def decode_secret_message(ast) do
    {_, acc} = Macro.prewalk(ast, [], &decode_secret_message_part/2)

    acc
    |> Enum.reverse()
    |> Enum.join()
  end
  
  defp add_name_prefix({name, _, args}, acc) when is_atom(name) and (is_list(args) or is_nil(args)) do
    arity = if is_nil(args), do: 0, else: length(args)

    prefix =
      name
      |> Atom.to_string()
      |> String.slice(0, arity)

    [prefix | acc]
  end
end
