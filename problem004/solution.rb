def StringChallenge(str)

  str != 'password' && str.length > 7 && str.length < 31 && str.scan(/\d/).any? && str.scan(/[A-Z]/).any? && str.scan(/[.,?!:;=*\-\/]/).any?

end

puts 'Input password for validation:'
puts StringChallenge(STDIN.gets.chomp)