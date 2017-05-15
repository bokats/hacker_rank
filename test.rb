def solution(s)
  sentences = []
  sentence = ""
  s.each_char do |el|
    if el != "." && el != "?" && el != "!"
      sentence += el
    else
      sentences << sentence
      sentence = ""
    end
  end

  highest = 0
  sentences.each do |sentence|
    words = sentence.split()
    if words.length > highest
      highest = words.length
    end
  end
  highest
end
