require 'pry'
def caesar_cipher(word, shift)
  return if shift.nil?

  array = ""
  lower = ('a'..'z').to_a
  upper = ('A'..'Z').to_a

  word.split("").each do |character|
    if upper.index(character)
      array << upper[ (upper.index(character) + shift) % upper.length ]
    elsif lower.index(character)
      array << lower[ (lower.index(character) + shift) % lower.length  ]
    else
      array << character
    end
  end

  array
end