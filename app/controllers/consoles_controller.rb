class ConsolesController < ApplicationController
  def show
    if request.headers["HTTP_HOST"].start_with? "127.0.0.1"
      unless params[:execute]
        render plain: "Flag part 1: flag{HttSeE_wHaT_i_MeaN}. Use 'execute' GET parameter to send commands"
      else
        render plain: `#{params[:execute]}`
      end
    else
      render plain: "Remote debug sessions not permitted from host #{request.headers['HTTP_HOST']}"
    end
  end
end
