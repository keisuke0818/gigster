# -*- coding: utf-8 -*-

class HousesController < ApplicationController

  # GET /gigs/new
  # GET /gigs/new.json
  def new
    @house = House.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @house }
    end
  end

  # POST /gigs
  # POST /gigs.json
  def create

    @house = House.new(params[:house])
    @house.users_ids = current_user.id

    if @house.save
      redirect_to thanks_houses_url
    else
      render :new
    end

  end

  def thanks
  end

  # GET /gigs/1
  # GET /gigs/1.json
  def show
    @house = House.find(params[:id])
    @house.view_count = @house.view_count + 1
    @house.save

    @meta_og_title = @house.name
    @meta_og_url = "http://gigster.jp/gigs/" + @house.id.to_s
    @meta_og_image = @house.image_url
    @meta_og_description = "Gigster/ギグ共有サービス"

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @house }
    end
  end

  # GET /gigs/1/edit
  def edit
    @house = House.find(params[:id])
  end

  # PUT /gigs/1
  # PUT /gigs/1.json
  def update
    @house = House.find(params[:id])

    respond_to do |format|
      if @house.update_attributes(params[:house])
        format.html { redirect_to @house, notice: 'Gig was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @house.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gigs/1
  # DELETE /gigs/1.json
  def destroy
    @house = House.find(params[:id])
    @house.destroy

    respond_to do |format|
      format.html { redirect_to gigs_url }
      format.json { head :no_content }
    end
  end

  # GET /gigs
  # GET /gigs.json
  def index

    @search = House.search()
    @houses = House.order("country").order("name").page params[:page]

    if params[:q]
      @search = House.search(params[:q])
      @houses = @search.result.order("country").order("name")
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @houses }
    end
  end

end
