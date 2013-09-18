# -*- coding: utf-8 -*-

class GigsController < ApplicationController

  # GET /gigs/new
  # GET /gigs/new.json
  def new
    @gig = Gig.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gig }
    end
  end

  # POST /gigs
  # POST /gigs.json
  def create

    @gig = Gig.new(params[:gig])

    @gig.users_ids = current_user.id
    @gig.yotube_url = @gig.yotube_url.gsub('watch?v=','embed/')

    if @gig.save
      redirect_to thanks_gigs_url
    else
      render :new
    end

  end

  def thanks
  end

  # GET /gigs/1
  # GET /gigs/1.json
  def show
    @gig = Gig.find(params[:id])

    @meta_og_title = @gig.name
    @meta_og_url = "http://gigster.jp/gigs/" + @gig.id.to_s
    @meta_og_image = @gig.flyer_url
    @meta_og_description = "Gigster/ギグ共有サービス"

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gig }
    end
  end

  # GET /gigs/1/edit
  def edit
    @gig = Gig.find(params[:id])
  end

  # PUT /gigs/1
  # PUT /gigs/1.json
  def update
    @gig = Gig.find(params[:id])

    respond_to do |format|
      if @gig.update_attributes(params[:gig])
        format.html { redirect_to @gig, notice: 'Gig was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gig.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gigs/1
  # DELETE /gigs/1.json
  def destroy
    @gig = Gig.find(params[:id])
    @gig.destroy

    respond_to do |format|
      format.html { redirect_to gigs_url }
      format.json { head :no_content }
    end
  end

  # GET /gigs
  # GET /gigs.json
  def index
    @gigs = Gig.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gigs }
    end
  end

end
