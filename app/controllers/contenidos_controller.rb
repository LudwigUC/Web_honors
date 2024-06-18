class ContenidosController < ApplicationController
  def add_content
    @contenido = Contenido.all
  end

  def show
  end

  def new
    @contenido = Contenido.new
  end

  def edit
  end

  def create
    # Crea una actividad y redirige a la página inicial
    @contenido = Contenido.new(conten_params)
    puts "here"

    if @contenido.save
      redirect_to "/add_content", notice: "Creado con exito"
    else
      puts "Errores de validación: #{@contenido.errors.full_messages.join(', ')}"
      redirect_to root_path, notice: "Creado sin exito"
    end
  end

    private

    def conten_params
      params.require(:contenido).permit(:nombre, :descripcion, :clases, :ayudantias, :interrogaciones )
    end
end
