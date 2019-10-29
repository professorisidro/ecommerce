<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<jsp:useBean id="Carrinho" type="br.edu.ufabc.ecommerce.model.Carrinho" scope="session"/>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>.: Meu Carrinho de Compras :. </title>

        <meta name="description" content="Source code generated using layoutit.com">
        <meta name="author" content="LayoutIt!">

        <link href="css/bootstrap.min.css" rel="stylesheet">
        
        <link href="css/style.css" rel="stylesheet">

    </head>
    <body>

        <div class="container-fluid">
            <div class="row" id="titulo">
               
                <div class="col-md-8">
                    <h1 class="text-center">
                        Bem vindos &agrave; nossa Loja Virtual 	
                    </h1>
                </div>
                <div class="col-md-2">
                    <a href="./meuCarrinho"><img src="./icons/cart.png" id="iconCarrinho"></a>                   
                </div>
                <div class="col-md-2">
                    <a href="./newUser"><img src="./icons/avatar.png" id="iconCarrinho"></a>
                </div>
            </div>
            <div class="row">
                <div class="col-md-2">
                    <strong><h4>Excluir</h4></strong>
                </div>
                <div class="col-md-8">
                    <strong><h4>Produto</h4></strong>
                </div>
                <div class="col-md-2">
                    <strong><h4>Qtde</h4></strong>
                </div>
            </div>
            <c:if test="${Carrinho.itens.size() eq 0}">
                <div class="row">
                    <div class="col-md-12">
                        <h3 align="center">Carrinho Vazio </h3>
                    </div>
                </div>
            </c:if>

            <c:if test="${Carrinho.itens.size() gt 0}">
                <c:forEach var="item" items="${Carrinho.itens}">
                    <div class="row">
                        <div class="col-md-2">
                            <h4><a href="./removerCarrinho?item=${item.produto.id}">x</a></h4>
                        </div>
                        <div class="col-md-8">
                            <h4>${item.produto.titulo}</h4>
                        </div>
                        <div class="col-md-2">
                            <h4>${item.qtde}</h4>
                        </div>
                    </div>
                </c:forEach>

                <div class="row">

                    <div class="col-md-2">
                        &nbsp;
                    </div>
                    <div class="col-md-8">
                        <h3>Total R$ ${Carrinho.total}</h3>
                    </div>
                    <div class="col-md-2">
                        &nbsp;
                    </div>

                </div>
            </c:if>
        </div>

        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/scripts.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    </body>
</html>