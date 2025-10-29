defmodule PaintByNumber do
  def palette_bit_size(color_count) when color_count <= 1, do: color_count
  def palette_bit_size(color_count), do: do_count(color_count - 1, 0)

  defp do_count(0, bits), do: bits
  defp do_count(n, bits), do: do_count(div(n, 2), bits + 1)
  
  def empty_picture() do
    <<>>
  end

  def test_picture() do
   <<0::size(2), 1::size(2), 2::size(2), 3::size(2)>>
  end

  def prepend_pixel(picture, color_count, pixel_color_index) do
    bits_per_pixel = palette_bit_size(color_count)
    <<pixel_color_index::size(bits_per_pixel), picture::bitstring>>
  end


  def get_first_pixel(<<>>, _color_count), do: nil
  def get_first_pixel(picture, color_count) do
    bits_per_pixel = palette_bit_size(color_count)
    <<first_pixel::size(bits_per_pixel), _rest::bitstring>> = picture
    first_pixel
  end

  def drop_first_pixel(<<>>, _color_count), do: <<>>
  def drop_first_pixel(picture, color_count) do
    bits_per_pixel = palette_bit_size(color_count)
    <<_first::size(bits_per_pixel), rest::bitstring>> = picture
    rest
  end

  def concat_pictures(picture1, picture2) do
    <<picture1::bitstring, picture2::bitstring>>
  end
end
