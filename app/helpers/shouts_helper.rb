module ShoutsHelper
  def link_hash_tags(text)
    text.gsub(/#[^ ]+/) do |match|
      link_to match, search_path(search: match)
    end.html_safe
  end
end
