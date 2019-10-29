create database ecommerce;
use ecommerce;
create table tblProduto(
   id        int not null auto_increment,
   titulo    varchar(50),
   descricao text,
   preco     float,
   categoria varchar(50),
   urlFoto1  varchar(100),
   urlFoto2  varchar(100),
   urlFoto3  varchar(100),
   constraint pk_produto primary key (id)
);


insert into tblProduto values (null, 'Cadeira Gamer','C a d e i r a  G a m e r',699.0, 'Acessorios', 'images/cadeira1.jpg', 'images/cadeira2.jpg', 'images/cadeira3.jpg');
insert into tblProduto values (null, 'Mouse Gamer','M o u s e  G a m e r',99.0, 'Acessorios', 'images/mouse1.jpg', 'images/mouse2.jpg', 'images/mouse3.jpg');
insert into tblProduto values (null, 'Teclado Gamer','T e c l a d o  G a m e r',199.0, 'Acessorios', 'images/teclado1.jpg', 'images/teclado2.jpg', 'images/teclado3.jpg');
insert into tblProduto values (null, 'Mesa Gamer','M e s a  G a m e r',999.0, 'Acessorios', 'images/mesa1.jpg', 'images/mesa2.jpg', 'images/mesa3.jpg');
insert into tblProduto values (null, 'Quadro Gamer','Q u a d r o  G a m e r',49.0, 'Cama Mesa & banho', 'images/quadro1.jpg', 'images/quadro2.jpg', 'images/quadro3.jpg');
insert into tblProduto values (null, 'Touca Gamer','T o u c a  G a m e r',29.0, 'Vestuario', 'images/touca1.jpg', 'images/touca2.jpg', 'images/touca3.jpg');
insert into tblProduto values (null, 'Headphone Gamer','H e a d p h o n e  G a m e r',119.0, 'Acessorios', 'images/headphone1.jpg', 'images/headphone2.jpg', 'images/headphone3.jpg');

select * from tblProduto;
