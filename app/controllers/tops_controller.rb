# -*- coding: utf-8 -*-

class TopsController < ApplicationController
  def index

    @search = Gig.search()

    @gigs = Gig.where("day > ?", Time.now - 1.days).order("day").limit(3)
    @artists = Artist.order("name").limit(3)
    @houses = House.order("country").order("name").limit(3)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gigs }
    end
  end


end
