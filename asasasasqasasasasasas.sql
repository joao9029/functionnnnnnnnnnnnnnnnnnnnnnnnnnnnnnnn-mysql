create database Nada;
use Nada;
drop database Nada;


-- questão 1
DELIMITER $$
create function CalcularTriplo (Triplo int)
returns int
deterministic
begin

 return Triplo * 3;
end $$
DELIMITER ;
select concat('Calcular o triplo: ',CalcularTriplo(20)) as resultado;

-- questão 2
DELIMITER $$
create function Receber_Quantidade (preco double, quantidade int)
returns double
deterministic
begin

 return preco * quantidade;
end $$
DELIMITER ;
select concat('quantidade :', Receber_Quantidade(10, 10)) as resultado,
	   concat('Preço', Receber_Quantidade(46.5, 3)) as resultado;

-- Questão 3       
DELIMITER $$
create function Nome (Pessoa varchar(50))
returns varchar(50)
deterministic
begin

 return concat('Nome :', Pessoa);
end $$
DELIMITER ;
select concat('João lucas santos fernandes')as resultado;

-- questão 4
DELIMITER $$
create function MaiorNumero (PrimeiroNumero int, SegundoNumero int)
returns varchar(100)
deterministic
begin
if PrimeiroNumero > SegundoNumero then
return concat('Primeiro numero é maior que segundo numero');
else
return concat('o segundo numero e maior que o primeiro, ERRO');
end if;

end $$

DELIMITER ;
select concat('Numero : ', MaiorNumero(10, 5))as resultado;

-- questão 5
DELIMITER $$
create function Login (Senha varchar(50))
returns varchar(50)
deterministic
begin
if Senha = 'João aura' then
return concat('Bem vindo', Senha);
else
return concat('ERRO, senha invalida');
end if;

end $$

DELIMITER ;
select concat(Login('joao')) as resultado;
  
