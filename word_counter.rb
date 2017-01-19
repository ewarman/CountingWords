#dict w/ default val of 0
words = Hash.new(0)

File.open('speech.txt') do |file|
  while line = file.gets
    #process a line in the speech
    line.chomp!.gsub(/[^\w\s]/, '').split(" ").each{|word| words[word]+=1}
  end
end

#sort decending by word count, write results to console
words.sort_by{|k,v| v}.reverse!.each { |key, value| puts "#{key} : #{value}" }