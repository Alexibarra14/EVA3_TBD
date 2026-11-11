delimiter $$

create function comprar_valores(val1 int, val2 int)
returns varchar(50) deterministic
begin
    declare mensaje varchar(50) default "LOS VALORES SON IGUALES";
    
    if val1 > val2 then
        set mensaje = concat(val1, " es mas grande");
    elseif val1 < val2 then
        set mensaje = concat(val2, " es mas grande");
    end if;
    
    return mensaje;
end $$

delimiter ;