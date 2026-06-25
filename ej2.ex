defmodule Persona do
  defstruct nombre: "", edad: 0, ci: 0

  def probar do
    persona = %Persona{nombre: "juan", edad: 10, ci: 38238398}
    IO.puts(persona.nombre)
  end
end

Persona.probar()
