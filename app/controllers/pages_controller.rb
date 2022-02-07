class PagesController < ApplicationController

  def about
  end

  def contact
    @members = {"Frodo Baggins" => {name: "Frodo", phone: 123_1234},"Samwise Gamgee" => {name: "Sam", phone: 123_1234, }}

  end

  def home
    @time = Date.today.strftime("%B #{Date.today.day.ordinalize} %Y")
  end

end
