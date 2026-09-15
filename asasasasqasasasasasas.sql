create database Nada;
use Nada;


-- questão 1
DELIMITER $$
create function CalcularTriplo (Triplo int)
returns int
begin

 return Triplo * 3;
end $$
DELIMITER ;

select CalcularTriplo(20);

-- questão 2
DELIMITER $$
create function Receber_Quantidade (preco double, quantidade int)
returns 
begin

 return Triplo * 3;
end $$
DELIMITER ;





