module PostsHelper

  def count_comments(post)
    if post.comments.empty?
      "No comments"
    else
      "#{post.comments.size} comments"
    end
  end

  def truncate_title(post)
    if post.body.length > 80
      "#{post.body.first(80)}..."
    else
      post.body
    end
  end

end