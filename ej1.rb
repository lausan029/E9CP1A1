#Copia el siguiente código y ejecútalo. 
#Luego corrige los errores para poder imprimir ejecutar ambos métodos y finalmente obtener el valor de la variable de a.

class Anything
	attr_reader :a
  def foo
    @a = 5
  end

  def bar
    @a += 1
  end
end

any = Anything.new
p any.foo
p any.bar
p any.a