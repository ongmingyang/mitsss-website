class HomeController < ApplicationController
  def index
    @page_title = 'home'
  end

  def about
    @page_title = 'about'
    @current_committee = CurrentCommittee.select("name, description, image")
    @q = Committee.select("year, position, name")
    @past_committees = Hash.new
    @q.each do |person|
      if !@past_committees.has_key?(person.year)
        @past_committees[person.year] = Hash.new
      end
      @past_committees[person.year][person.position] = person.name
    end
  end

  def events
    @page_title = 'events'
    @events = Event.select("name, description, image")
  end

  def constitution
    @page_title = 'constitution'
  end
  
  def poll
    @page_title = 'constitution'
  end
end

