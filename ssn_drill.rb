# Determine whether a string contains a Social Security number.
def has_ssn?(string)
  string.match(/\d{3}-\d{2}-\d{4}/) ? true : false
end

# Return the Social Security number from a string.
def grab_ssn(string)
  if string.match(/\d{3}-\d{2}-\d{4}/)
    return string.match(/\d{3}-\d{2}-\d{4}/).to_s
  end
end

# Return all of the Social Security numbers from a string.
def grab_all_ssns(string)
  if string.scan(/\d{3}-\d{2}-\d{4}*/)
    return string.scan(/\d{3}-\d{2}-\d{4}*/)
  end
end

def ssn_pattern
  /(\d{3})\D*(\d{2})\D*(\d{4})/
end

# Obfuscate all of the Social Security numbers in a string. Example: XXX-XX-4430.
def hide_all_ssns(string)
  string.gsub(ssn_pattern, 'XXX-XX-\3')
end

# Ensure all of the Social Security numbers use dashes for delimiters.
def format_ssns(string)
  string.gsub(ssn_pattern, '\1-\2-\3')
end