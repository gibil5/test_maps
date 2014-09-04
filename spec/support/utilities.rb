

# jr@oblique:  4/9/14 

def full_title(page_title)

  base_title = "Test Maps"

  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end

end


