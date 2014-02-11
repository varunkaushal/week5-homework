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
	render 'new'
  end

  def create
    c = Comic.new
	c.title = params["title"]
	c.description = params["description"]
	c.image = params["image"]
	c.save

    redirect_to "/comics"
  end














end
