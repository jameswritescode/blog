json.array!(posts.order('id DESC')) do |post|
  json.extract! post, :id, :title, :content, :slug, :created_at, :updated_at, :status, :published_at

  json.created_at_in_words time_ago_in_words(post.created_at)
  json.updated_at_in_words time_ago_in_words(post.updated_at)
end
