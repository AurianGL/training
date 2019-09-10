def full_name(first_name, last_name)
  # to do return full name
  if last_name.nil? || last_name == '' && !first_name.nil? && first_name != ''
    first_name.capitalize.to_s
  elsif first_name == ''
    last_name.capitalize.to_s
  elsif (first_name || last_name) != '' || nil
    "#{first_name.capitalize} #{last_name.capitalize}"
  end
end

# p full_name()
