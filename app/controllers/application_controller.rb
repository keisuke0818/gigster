# -*- coding: utf-8 -*-

class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :meta_defaults

  def meta_defaults
    @meta_title = "Gigster"
    @meta_keywords = "Gig,Gigster,ギグ,ギグスター,ぎぐ,ぎぐすたー,ライブ,ライブ共有,音楽,コンサート"
    @meta_description = "Share gigs around the World/ギグ共有サービス"
    @meta_robots = "index,follow,noydir,noodp"
    @meta_viewport = "width=1000"
    @meta_format_detection = "telephone=no"
    @meta_X_UA_Compatible = "IE=edge"

    @meta_fg_appid = "153617311511977"
    @meta_og_title = "Gigster/Share gigs around the World/ギグ共有サービス"
    @meta_og_type = "website"
    @meta_og_url = "http://gigster.jp/"
    @meta_og_image = "http://gigster.jp/assets/gigster.png"
    @meta_og_site_name = "Gigster"
    @meta_og_description = "Share gigs around the World/ギグ共有サービス"
    @meta_og_locale = "ja_JP"

  end

end
