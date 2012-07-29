class PostObserver < ActiveRecord::Observer

  observe :post

  def before_save(post)
  end

end
