delimiter $$
create function generar_rfc(
    nombre varchar(50), 
    ap_pat varchar(50), 
    ap_mat varchar(50), 
    fecha_nac date
) 
returns varchar(13) deterministic
begin
    declare rfc VARCHAR(13);
    declare letra_mat CHAR(1);
    
   if ap_mat is null or trim(ap_mat) = '' THEN
set  letra_mat = 'X';
   else
   set letra_mat = substring(trim(ap_mat), 1, 1);
   end if;
    set rfc = upper(concat(
        substring(trim(ap_pat), 1, 2),
        letra_mat,
        substring(trim(nombre), 1, 1),
        date_format(fecha_nac, '%y%m%d'),
        'XXX'));
    
    return rfc;
end$$
delimiter ;