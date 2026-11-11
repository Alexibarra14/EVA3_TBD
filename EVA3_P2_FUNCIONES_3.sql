delimiter $$
create function dia_semana( dia int)
returns varchar(50) deterministic
begin
declare resu varchar(50);
case dia
when 1 then set resu = "Domingo";
when 2 then set resu = "lunes";
when 3 then set resu = "martes";
when 4 then set resu = "miercoles";
when 5 then set resu = "jueves";
when 6 then set resu = "sabado";
when 7 then set resu = "domingo";
else set resu = "numero de dia invalido";

end case;

return resu;
end $$
delimiter ;