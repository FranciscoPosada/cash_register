def pluralise(text,number)
  if number == 1 || text.end_with?("s")
    text
  else
    "#{text}s"
  end
end
