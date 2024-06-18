class ContenidosController < ApplicationController
  def add_content
    @contenido = Contenido.last
  end

  def show
  end

  def new
    @contenido = Contenido.new
  end

  def edit
  end

  def create
    if conten_params
      @contenido = Contenido.new(conten_params)
        if @contenido.save
          redirect_to "/add_content", notice: "Creado con exito"
      else
        puts "Errores de validación: #{@contenido.errors.full_messages.join(', ')}"
        redirect_to "/add_content", notice: "Creado sin exito"
      end
    else
      redirect_to "/add_content", notice: "No se pueden dejar en blanco"
    end
  end

  def terminar
    if conten_params.present?
      @contenido = Contenido.new(conten_params)
        if @contenido.save
          redirect_to "/show_planner", notice: "Creado con exito"
      else
        puts "Errores de validación: #{@contenido.errors.full_messages.join(', ')}"
        redirect_to "/add_content", notice: "Creado sin exito"
      end
    else
      redirect_to "/show_planner", notice: "No se pueden dejar en blanco"
    end
  end

    private

    def conten_params
      params.require(:contenido).permit(:nombre, :descripcion, :clases, :ayudantias, :interrogaciones )
    end
end
