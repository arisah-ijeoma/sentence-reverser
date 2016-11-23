class ReverseMySentence
  def reverser(sentence)
    words = sentence.split(/\b/)
    length = words.length

    i = 0
    j = length - 1

    i.upto(length-1) do |index_i|
      next unless i == index_i

        j.downto(i) do |index_j|

          j = index_j

          temp_i = words[i]
          temp_j = words[j]

          regx = /[a-zA-Z0-9\w]/

          unless temp_i.match(r=regx)
            i += 1 # move i counter
            break
          end

          next unless temp_j.match(r=regx) # move j counter

          temp_i = words[i]
          words[i] = words[j]
          words[j] = temp_i

          i += 1
        end
    end

    words.join('')
  end
end
