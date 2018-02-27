class VisitorsController < ApplicationController



  def index
    if signed_in?.blank?

    else
      direct_to register_path_path
    end
  end
end

