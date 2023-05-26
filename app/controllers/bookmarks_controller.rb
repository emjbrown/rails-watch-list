class BookmarksController < ApplicationController
  # def index
  #   @bookmarks = Bookmark.all
  # end
  # is it because I need a /bookmarks path in order
  # to create bookmarks/new?

  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    # raise
    # @movie = Movie.find(params[:movie_id])
    # @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.save
    redirect_to
  end

  def destroy
    @bookmark = Bookmark.find(:id)
    @bookmark.destroy
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id, :list_id)
  end
end
