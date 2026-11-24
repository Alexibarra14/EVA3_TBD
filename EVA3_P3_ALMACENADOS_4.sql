delimiter $$
create function insertar_ciudad(id_ciudad int, ciudad_nombre varchar(50))
returns int deterministic modifies sql data
begin
insert into ciudad value(id_ciudad,ciudad_nombre);
return 1;
end $$
delimiter $$
