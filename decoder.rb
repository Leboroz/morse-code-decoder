@morse_code_char = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}

def decode_char(morse_char)
  @morse_code_char[morse_char]
end

def decode_word(word)
  final_word = ''

  word.split(/ /).each do |single|
    final_word += decode_char(single)
  end
  final_word
end

def decode(string)
  final_string = ''

  string.split(/   /).each do |single|
    final_string += decode_word(single)
    final_string += " "
  end
  final_string
end

puts decode_char '.-'

puts decode_word('-- -.--')

puts decode("-- -.--   -. .- -- .")

puts decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
