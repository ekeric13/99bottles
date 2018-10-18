class Bottles

  def song
    verses(99, 0)
  end

  def verses(to, from)
    verse_arr = to.downto(from).map do |num|
      verse(num)
    end
    verse_arr.join("\n") 
  end

  def verse(num)
    if num == 0
      return zero_edge_case
    elsif num == 1
      return one_edge_case
    end
   return "#{num_bottles(num)} of beer on the wall, " +
    "#{num_bottles(num)} of beer.\n" +    
    "Take one down and pass it around, " +
    "#{num_bottles(num - 1)} of beer on the wall.\n"
  end

  def num_bottles(num)
    if num == 1
      return "1 bottle"
    end
    return "#{num} bottles"
  end

  def one_edge_case
    "1 bottle of beer on the wall, " +
    "1 bottle of beer.\n" +  
    "Take it down and pass it around, " + 
    "no more bottles of beer on the wall.\n"  
  end

  def zero_edge_case
    "No more bottles of beer on the wall, " +
    "no more bottles of beer.\n" +
    "Go to the store and buy some more, " +
    "99 bottles of beer on the wall.\n"
  end
end
