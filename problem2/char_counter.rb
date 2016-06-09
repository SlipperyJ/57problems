class CharCounter
  def count_chars(string)
    raise(ArgumentError, "Not a string") unless string.respond_to?(:to_str)
    raise(ArgumentError, "Invalid input type") if string.empty?

    string.strip.length   
  end
end
