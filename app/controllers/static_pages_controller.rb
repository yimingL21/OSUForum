class StaticPagesController < ApplicationController
  before_action :get_subforums

  def home
  end

  def about
  end

  private
    def get_subforums
      @sub_forums = SubForum.all
    end
end
