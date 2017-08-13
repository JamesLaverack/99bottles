class Bottles
  def verse(num)
    <<-VERSE
#{plural(num)} of beer on the wall, #{plural(num)} of beer.
Take one down and pass it around, #{plural(num - 1)} of beer on the wall.
VERSE
  end

  def plural(num)
    if num > 1
      "#{num} bottles"
    else
      "#{num} bottle"
    end
  end
end
