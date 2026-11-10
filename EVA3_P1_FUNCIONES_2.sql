delimiter $$
create function mostrar_mensaje(mensaje varchar(50))
returns varchar(100) deterministic
begin
declare mi_mensaje varchar(50);
set mi_mensaje = concat("hola",mensaje);
return mi_mensaje;

end $$

delimiter ;