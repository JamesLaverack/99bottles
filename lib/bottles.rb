class Bottles
  def song()
    b=99.downto(0).to_a
    puts b
    verses(*b)
  end

  def verses(*nums)
    text = nums.map do |num|
      verse(num)
    end

    text.join("\n")
  end

  def verse(num)
    str = <<-VERSE
#{plural(num)} of beer on the wall, #{plural(num)} of beer.
#{retrieve_bottles(num)}, #{plural(next_amount(num))} of beer on the wall.
    VERSE

    str.slice(0, 1).capitalize + str.slice(1..-1)
  end

  def next_amount(num)
    if num != 0
      num - 1
    else
      99
    end
  end

  def retrieve_bottles(amount_remaining)
    if amount_remaining > 1
      'Take one down and pass it around'
    elsif amount_remaining > 0
      'Take it down and pass it around'
    else
      'Go to the store and buy some more'
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
