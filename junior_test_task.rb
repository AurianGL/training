regex_array = {
  AB: "AA",
  BA: "AA",
  CB: "CC",
  BC: "CC",
  AA: "A",
  CC: "C",
}


def solution(s, regex_array)
  until s.match(/(ab|ba|cb|bc|aa|cc)/i).nil?
    rule = s.scan(/(ab|ba|cb|bc|aa|cc)/i).sample
    s = s.gsub(/#{rule[0]}/, regex_array[rule[0].to_sym])
  end
  s
end

def test(regex_array)
  s = []
  50_000.times do
    s << ["A","B","C"].sample
  end
  puts solution(s.join, regex_array)
end

puts test(regex_array)
