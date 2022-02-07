class PagesController < ApplicationController

  def about
  end

  def contact
    search = params[:member]
    @members = {"Frodo" => {name: "Frodo Baggins", dependability: 5},"Sam" => {name: "Samwise Gamgee", dependability: 10 }, "Gandalf" => {name: "Gandalf The White", dependability: 10}, "Aragorn" => {name: "Aragorn", dependability: 10}}

    if search.present?
      @members = @members.select { |name|  name.downcase == search.downcase }
    else
      @members = {"Frodo" => {name: "Frodo Baggins", dependability: 5},"Sam" => {name: "Samwise Gamgee", dependability: 10 }, "Gandalf" => {name: "Gandalf The White", dependability: 10}, "Aragorn" => {name: "Aragorn", dependability: 10}}
    end
  end

  def home
    @time = Date.today.strftime("%B #{Date.today.day.ordinalize} %Y")
  end

end
