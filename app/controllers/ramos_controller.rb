class RamosController < ApplicationController
  def home
    @ramo = Ramo.first
  end

  def show
  end

  def new
    @ramo = Ramo.new
  end

  def edit
  end

  def create
    Rails.logger.debug params.inspect
    # Crea una actividad y redirige a la página inicial
    @ramo = Ramo.new(ramo_params)

    if @ramo.save
      redirect_to "/add_content", notice: "Creado con exito"
    else
      puts "Errores de validación: #{@ramo.errors.full_messages.join(', ')}"
      redirect_to root_path, notice: "Creado sin exito"
    end
  end

    private

    def ramo_params
      params.require(:ramo).permit(:Nombre, :Fecha )
    end
end
