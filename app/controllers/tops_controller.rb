# -*- coding: utf-8 -*-

class TopsController < ApplicationController
  def index

    @search = Gig.search()
    @gigs = Gig.where("day >= ?", Time.now - 1.days).order("day").limit(100)

    if params[:q]
      @search = Gig.search(params[:q])
      @gigs = @search.result
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gigs }
    end
  end


end
