# input: Name
# output: 32 chars long integer

require 'digest'

def name_to_numbers(name)
  digest = Digest::MD5.hexdigest(name)

  numbers = ''.tap do |s|
    digest.each_byte do |b|
      s << b.to_s.split('')[-1]
    end
  end
end

names = %w[Felipe Pascal Donat Franca Kuschti Rene]

names.each do |n|
  puts n
  puts name_to_numbers(n)
end
