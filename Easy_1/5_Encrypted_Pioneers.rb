=begin
create new string to be returned
convert string to array of characters
iterate over it
  for each character store case in a variable
  then convert value to opposing character, apply case, and append to new string
finally return new string once iteration done
=end

ROT_13_HASH = {
  'A' => 'N',
  'B' => 'O',
  'C' => 'P',
  'D' => 'Q',
  'E' => 'R',
  'F' => 'S',
  'G' => 'T',
  'H' => 'U',
  'I' => 'V',
  'J' => 'W',
  'K' => 'X',
  'L' => 'Y',
  'M' => 'Z',
  'N' => 'A',
  'O' => 'B',
  'P' => 'C',
  'Q' => 'D',
  'R' => 'E',
  'S' => 'F',
  'T' => 'G',
  'U' => 'H',
  'V' => 'I',
  'W' => 'J',
  'X' => 'K',
  'Y' => 'L',
  'Z' => 'M',
  ' ' => ' '
  }

def rot_13(name)
  name.split('').map do |char|
    is_upcase = (char.upcase == char)
    if is_upcase
      ROT_13_HASH[char.upcase]
    else
      ROT_13_HASH[char.upcase].downcase
    end
  end.join('')
end

encrypted_names = <<-OUTPUT.chomp.gsub /^\s+/, ""
Nqn Ybirynpr
Tenpr Ubccre
Nqryr Tbyqfgvar
Nyna Ghevat
Puneyrf Onoontr
Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv
Wbua Ngnanfbss
Ybvf Unvog
Pynhqr Funaaba
Fgrir Wbof
Ovyy Tngrf
Gvz Orearef-Yrr
Fgrir Jbmavnx
Xbaenq Mhfr
Fve Nagbal Ubner
Zneiva Zvafxl
Lhxvuveb Zngfhzbgb
Unllvz Fybavzfxv
Tregehqr Oynapu
OUTPUT

arr_names = encrypted_names.split("\n")

decrypted_names = []

arr_names.each_with_index do |name, index|
  decrypted_names << rot_13(name)
  puts "Before: #{arr_names[index]}   After: #{decrypted_names[index]}"
end
