class PagesController < ApplicationController
  layout "application"
  before_action :authenticate_user!, :only => [:about]

  def home
 @posts = Blog.all
 @skills = Skill.all
  end

  def about
    @skills = Skill.all
  end

  def contact
  end

  def tech_news
    # @tweets = SocialTool.twitter_search
  end

end
