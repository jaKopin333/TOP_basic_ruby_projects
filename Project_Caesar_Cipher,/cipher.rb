#Create a class to structure your casing a..z
class Caesar
  LOWER_A = "a".ord
  LOWER_Z = "z".ord
#attr_reader creates getter methods for text and rotation
  attr_reader :text, :rotation
# initialize sets up the object's text and rotation values
#text/string--cycle through--
  def initialize(text, rotation)
    @text = text
    @rotation = rotation
  end
# This is where you move from one char to another in the ord (order) of that char
# new_code happens by taking old code string and adding it by the rotation
  def shift_method(char)
    code = char.ord
    new_code = code + rotation
# if new_code is greater than lower_z then return/start back at lower_a add (new_code - lower_z) - 1 char
# Depending on where you are at in the a...z you will then return your new char
    if new_code > LOWER_Z
      return LOWER_A + (new_code - LOWER_Z) - 1
    end

    new_code
  end
# cipher the code by taking the text and it's characters and mapping where each char is in the cycle.
# code then will equal the char.ord by the next placement of the char
  def cipher
    text.chars.map do |char|
      code = char.ord
# So if code is greater or equal to lower_a and or code is less than or equal to lower_z then SHIFT char in the correct direction based off the intger math
# join combines all transformed characters back into one string
      if code >= LOWER_A && code <= LOWER_Z
        shift_method(char).chr
      else
        char
      end
    end.join
  end
end
# create a new Caesar object with text and rotation
cipher = Caesar.new("eating three apples at the same time", 6)
#Use p or print to see the code in your terminal
p cipher.cipher
