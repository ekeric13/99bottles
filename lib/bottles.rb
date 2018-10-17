# finished in 22.5 minutes

class Bottles

  def song
    verses(99, 0)
  end

  def verses(to, from)
    # loop from "to" to "from"
      # calculate verse
    verse_arr = to.downto(from).map do |num|
      verse(num)
    end
    verse_arr.join("\n") 
  end

  def verse(num)
    if num == 0
      return zero_edge_case
    end
    final_text = get_final_text(num)
   return "#{num_bottles(num)} of beer on the wall, " +
    "#{num_bottles(num)} of beer.\n" +    
    final_text
  end

  def num_bottles(num)
    if num == 1
      return "1 bottle"
    end
    return "#{num} bottles"
  end

  def get_final_text(num)
    num_left = num - 1
    if num_left == 0
      return "Take it down and pass it around, " + 
      "no more bottles of beer on the wall.\n"
    end
    return "Take one down and pass it around, " +
    "#{num_bottles(num_left)} of beer on the wall.\n"
  end

  def zero_edge_case
    "No more bottles of beer on the wall, " +
    "no more bottles of beer.\n" +
    "Go to the store and buy some more, " +
    "99 bottles of beer on the wall.\n"
  end
end
