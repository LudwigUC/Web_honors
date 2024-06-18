class IndexController < ApplicationController
  def planner
    @ramo = Ramo.last
    @contenidos = Contenido.all
  end
end
