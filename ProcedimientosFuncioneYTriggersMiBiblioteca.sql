use MiBlioteca;
-- Procedimiento para saber el estado de los libros
delimiter //
create procedure estado_libros(in estado_libros varchar(50))
begin
	select * from libros where estado = estado_libros;
end;
//
delimiter ;

call estado_libros('En Proceso');
call estado_libros('Pendiente');