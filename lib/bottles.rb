class Bottles
  def verse(num)
    <<-VERSE
#{plural(num)} of beer on the wall, #{plural(num)} of beer.
#{retrieve_bottles(num)}, #{plural(num - 1)} of beer on the wall.
    VERSE
  end

  def retrieve_bottles(amount_remaining)
    if amount_remaining > 1
      'Take one down and pass it around'
    elsif amount_remaining > 0
      'Take it down and pass it around'
    end
  end

  def plural(num)
    if num > 1
      "#{num} bottles"
    elsif num == 1
      "#{num} bottle"
    else
      'no more bottles'
    end
  end
end
