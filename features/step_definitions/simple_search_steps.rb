Given /the following contributions exist/ do |contributions|
  contributions.hashes.each do |contribution|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
    Contribution.create!(contribution)    
  end
end
