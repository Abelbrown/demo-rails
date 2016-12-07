class PagesController < ApplicationController

  RESTAURANTS = [
                  {name: "Dishroom", address: "23 rue Lapuis"},
                  {name: "Sushi Darma", address: "13 rue Candone"}
                ]

  def about
    @restaurants = RESTAURANTS

  end

  def contact
  end

  def team

  end

  def search
   @category = params[:category]
  end

end
