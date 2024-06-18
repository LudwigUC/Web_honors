class RamosController < ApplicationController
  def home
    @ramo = Contenido.all
  end

  def show
  end

  def new
    @ramo = Contenido.new
  end

  def edit
  end

  def create
    # Crea una actividad y redirige a la página inicial
    @ramo = Contenido.new(conten_params)

    if @ramo.save
      redirect_to root_path, notice: "Creado con exito"
    else
      puts "Errores de validación: #{@ramo.errors.full_messages.join(', ')}"
      redirect_to root_path, notice: "Creado sin exito"
    end
  end

    private

    def conten_params
      params.require(:ramo).permit(:Nombre, :Fecha )
    end
end
