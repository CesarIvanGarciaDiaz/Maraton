require_relative'model'
require_relative'view'


class Controller

  def initialize
    @view2=Views.new
    @view2.queEmpieceElJuego
    @task=LeerJuego.new("#{@categoria=gets.chomp}.csv")
  end
  def execute
  @view2.queEmpieceElJuego
    lanzaPregunta
  end
  def lanzaPregunta
  @view2.lanzaPregunta(@task.lanzaPregunta)
  end

end
Controller.new.execute
