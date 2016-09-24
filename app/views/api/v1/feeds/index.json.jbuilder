json.array! @feeds.each do |feed|
  json.id feed.id
  json.title feed.title
  json.summary feed.summary
  json.content feed.content
  json.vote_number feed.vote_number
  json.favorite @currentvotes.include?(feed)
  json.category feed.categories
  json.display true
  json.votes feed.feed_votes.size
end
