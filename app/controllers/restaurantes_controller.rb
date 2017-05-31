class RestaurantesController < ApplicationController

	#def index
	#	@restaurantes = Restaurante.all
	#end
	 
	#def index
	#    @restaurantes = Restaurante.all
	#    respond_to do |format|
	#      format.html
	#      format.xml {render xml: @restaurantes}
	#    end
	#end

	def index
		@restaurantes = Restaurante.order :nome

		  respond_to do |format|
		    format.html
		    format.xml {render xml: @restaurantes}
    		format.json {render json: @restaurantes}
		  end
    end


	def show
        @restaurante = Restaurante.find(params[:id])		
	end

	def destroy
	  @restaurante = Restaurante.find(params[:id])
	  @restaurante.destroy

	  redirect_to(action: "index")
	end

	def new
	   @restaurante = Restaurante.new
	end

	def create
	   @restaurante = Restaurante.new(restaurante_params)
  	  # @restaurante.save
  	   if @restaurante.save
  	   	redirect_to(action: 'index')
  	   else
  	   	#redirect_to(action: 'new')
  	   	render action: "new"
  	   end	
       #redirect_to(action: "show", id: @restaurante)
       #redirect_to(action: 'index')


	  #puts params[:restaurante][:nome]
	  #puts params[:restaurante][:endereco]
	  #puts params[:restaurante][:especialidade]
	end

	def edit
		@restaurante = Restaurante.find(params[:id])
	end

	def update
		@restaurante = Restaurante.find(params[:id])
		if @restaurante.update_attributes(restaurante_params)
			redirect_to(action: 'index')
		else
			render action:'edit'
		end
		#@restaurante.update_attributes(restaurante_params)
		#redirect_to(action: 'index')
	end

	def restaurante_params
	  params.require(:restaurante).permit(:nome, :endereco, :especialidade)
	end


end
