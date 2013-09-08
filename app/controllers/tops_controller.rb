# -*- coding: utf-8 -*-

class TopsController < ApplicationController
  def index

    @gigs = Gig.order("day").limit(100)
    #.where(" day >= datetime('now') ")

    if params[:band] && params[:band][:name] != ""
      @gigs = @gigs.where(" name like ? or infomation like ? ", '%'+params[:band][:name]+'%', '%'+params[:band][:name]+'%')
    end

    if params[:prefecture_code] && params[:prefecture_code] != ""
      @gigs = @gigs.where(" prefecture_code = ? ",params[:prefecture_code])
    end

    if params[:gig] && params[:gig][:day] != ""
      @gigs = @gigs.where(" day = ? ",Gig.new(params[:gig]).day)
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gigs }
    end
  end


end
