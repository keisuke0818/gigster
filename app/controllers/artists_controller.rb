# -*- coding: utf-8 -*-

class ArtistsController < ApplicationController

  # GET /gigs/new
  # GET /gigs/new.json
  def new
    @artist = Artist.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @artist }
    end
  end

  # POST /gigs
  # POST /gigs.json
  def create

    @artist = Artist.new(params[:artist])

    @artist.users_ids = current_user.id
    @artist.yotube_url = @artist.yotube_url.gsub('watch?v=','embed/')

    if @artist.save
      redirect_to thanks_artists_url
    else
      render :new
    end
  end

  def thanks
  end

  def favorite_artist
    fav = FavoriteArtist.where(:user_id => current_user.id, :artist_id => params[:id] ).first
    unless fav
      @fav = FavoriteArtist.new()
      @fav.user_id = current_user.id
      @fav.artist_id = params[:id]
      @fav.save
    end

    @artist = Artist.find(params[:id])
    render action: "show",id: params[:id]
  end

  def comment_artist
    @comment = CommentArtist.new()
    @comment.user_id = current_user.id
    @comment.artist_id = params[:id]
    @comment.content = params[:content]
    @comment.save

    @artist = Artist.find(params[:id])
    render action: "show",id: params[:id]
  end

  # GET /gigs/1
  # GET /gigs/1.json
  def show
    @artist = Artist.find(params[:id])
    @artist.view_count = @artist.view_count + 1
    @artist.save

    @meta_og_title = @artist.name
    @meta_og_url = "http://gigster.jp/artist/" + @artist.id.to_s
    @meta_og_image = @artist.image_url
    @meta_og_description = "Gigster/ギグ共有サービス"

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @artist }
    end
  end

  # GET /gigs/1/edit
  def edit
    @artist = Artist.find(params[:id])
  end

  # PUT /gigs/1
  # PUT /gigs/1.json
  def update
    @artist = Artist.find(params[:id])

    respond_to do |format|
      if @artist.update_attributes(params[:artist])
        format.html { redirect_to @artist, notice: 'Gig was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gigs/1
  # DELETE /gigs/1.json
  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy

    respond_to do |format|
      format.html { redirect_to gigs_url }
      format.json { head :no_content }
    end
  end

  # GET /gigs
  # GET /gigs.json
  def index

    @search = Artist.search()
    @artists = Artist.order("name").page params[:page]

    if params[:q]
      @search = Artist.search(params[:q])
      @artists = @search.result.order("name")
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @artists }
    end
  end

end
