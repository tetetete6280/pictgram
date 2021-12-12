class FavoritesController < ApplicationController
  def index
    @favorite_topics = current_user.favorite_topics
    # binding.pry
  end
  
  def create
    
    # unless current_user.favorite_topics.include(params[:topic_id])
    
    favorite = Favorite.new
    favorite.user_id = current_user.id
    favorite.topic_id = params[:topic_id]
    
      if favorite.save
      redirect_to topics_path, success: 'お気に入りに登録しました'
      else
      redirect_to topics_path, danger:'お気に入りの登録に失敗しました'
      end
    
  end
  
  
  # ここから追加
   def destroy
     @topic = topic.find(params[:topic_id])
     @favorite = current_user.favorites.find_by(post_id: params[:post_id]).destroy
     @favorite.destroy
     redirect_to topics_path, danger:'いいねを解除しました。'
   end
  
end
