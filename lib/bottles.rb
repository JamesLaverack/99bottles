class Bottles
  def verse(num)
    <<-VERSE
#{num} bottles of beer on the wall, #{num} bottles of beer.
Take one down and pass it around, #{num - 1} bottles of beer on the wall.
VERSE
  end
end
