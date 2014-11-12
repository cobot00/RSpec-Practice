
class StringUtils

  def clone(words)
    result = []
    words.each {|w| result << w}
    return result
  end

  def concat(strings)
    result = ""
    strings.each {|w| result << w}
    return result
  end

  def include?(word, key_word)
    return word.include?(key_word)
  end
end
