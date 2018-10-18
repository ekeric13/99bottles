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
      return zero_case
    elsif num == 1
      return one_case
    elsif num == 2
      return two_case
    else
      return generic_case(num)
    end
  end

  def generic_case(num)
    "#{num} bottles of beer on the wall, " +
    "#{num} bottles of beer.\n" +    
    "Take one down and pass it around, " +
    "#{num - 1} bottles of beer on the wall.\n"
  end

  def two_case
    "2 bottles of beer on the wall, " +
    "2 bottles of beer.\n" +  
    "Take one down and pass it around, " + 
    "1 bottle of beer on the wall.\n"  
  end

  def one_case
    "1 bottle of beer on the wall, " +
    "1 bottle of beer.\n" +  
    "Take it down and pass it around, " + 
    "no more bottles of beer on the wall.\n"  
  end

  def zero_case
    "No more bottles of beer on the wall, " +
    "no more bottles of beer.\n" +
    "Go to the store and buy some more, " +
    "99 bottles of beer on the wall.\n"
  end
end
