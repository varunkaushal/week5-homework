class ComicsController < ApplicationController

  def index
    # render 'index'
    @comics = Comic.all
  end

  def show
    # Route pattern: /comics/:comic_id
    the_comic_id = params["comic_id"]

    @comic = Comic.find_by :id => the_comic_id

    render 'show'
  end

  def toast
    the_comic_id = params["comic_id"]

    c = Comic.find_by(:id => the_comic_id)
    c.destroy

    redirect_to "/comics"
  end

  def new

  end

  def create
    c = Comic.new
	c.title = comic_info["title"]
	c.issueNum = comic_info["issueNumber"]
	c.description = comic_info["descrtiption"]
	c.image = comic_info["thumbnail"]
	c.save

    redirect_to "/comics"
  end














end
