class PagesController < ApplicationController
  def batman

  	if params[:email]
  		@voto=Voto.new
  		@voto.heroe="batman"
  		@voto.email=params[:email]
  		@voto.save

  	end
  end
  def superman
  		if params[:email]
  		@voto=Voto.new
  		@voto.heroe="superman"
  		@voto.email=params[:email]
  		@voto.save

  	end
  end

  def  batmanvssuperman

  	@votos_superman=Voto.where(:heroe =>"superman").count
  	
  	@votos_batman=Voto.where(:heroe =>"batman").count
  end
end
