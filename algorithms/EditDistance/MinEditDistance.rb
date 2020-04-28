def levenshtein_distance(s, t)
  m = s.length
  n = t.length
  return m if n == 0
  return n if m == 0
  d = Array.new(m+1) {Array.new(n+1)}

  (0..m).each {|i| d[i][0] = i}
  (0..n).each {|j| d[0][j] = j}
  
  (1..n).each do |j|
    (1..m).each do |i|
      d[i][j] = if s[i-1] == t[j-1]  # adjust index into string
                  d[i-1][j-1]       # no operation required
                else
                  [ d[i-1][j]+1,    # deletion
                    d[i][j-1]+1,    # insertion
                    d[i-1][j-1]+1,  # substitution
                  ].min
                end
    end
  end
  d[m][n]
end


human_data = File.read(".\\algorithms\\EditDistance\\StudyFiles\\Human.txt")
human_data = human_data.tr('0-9',"")
human_data = human_data.tr(" ", "")
puts human_data
ape_data = File.read(".\\algorithms\\EditDistance\\StudyFiles\\GreatApes.txt")
ape_data = ape_data.tr('0-9',"")
ape_data = ape_data.tr(" ", "")
puts ape_data
puts ape_data.size

(1..10).each do |x|
  endindex = x * 1000
  startTime = Time.now
  dist = levenshtein_distance(human_data[0..endindex], ape_data[0..endindex])
  endTime = Time.now
  total_time = endTime-startTime
  puts "Time '#{total_time}' levenshtein_distance between Human and ape for sequenecs 0 to '#{endindex}' = #{dist}"
  write_handler = File.new(".\\algorithms\\EditDistance\\studyresults.txt", "a")
  #writes into the file
  write_handler.puts("'#{endindex}' '#{total_time}'").to_s
  #closes the file
  write_handler.close
end

#[ ['fire','water'], ['amazing','horse'], ["bamerindos", "giromba"] ].each do |s,t|
#  puts "levenshtein_distance('#{s}', '#{t}') = #{levenshtein_distance(s, t)}"
#end
#File.open(".\\algorithms\\words.txt", "r") do |file_handle|
#  file_handle.each_line do |line|
#    words = line.split("->")
#    puts "levenshtein_distance('#{words[0]}', '#{words[1]}') = #{levenshtein_distance(words[0], words[1])}"
#  end
#end
