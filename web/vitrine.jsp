<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<jsp:useBean id="Lista" type="java.util.List" scope="request"/>
<html>
    <head>
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/scripts.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>.: Loja Virtual Gamer :.</title>
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
            <!-- row dos produtos -->
            <c:forEach var="produto" items="${Lista}">
                <div class="row">
                    <div class="col-md-8">
                        <h3>
                            <a href="detalheProduto?id=${produto.id}">${produto.titulo}</a>
                        </h3>
                        <p>
                            ${produto.descricao}
                        <h4> R$ ${produto.preco} </h4>
                        </p>
                    </div>
                    <div class="col-md-4">
                        <div class="carousel slide" id="carousel-${produto.id}">
                                <ol class="carousel-indicators">
                                        <li data-slide-to="0" data-target="#carousel-${produto.id}" class="active">
                                        </li>
                                        <li data-slide-to="1" data-target="#carousel-${produto.id}">
                                        </li>
                                        <li data-slide-to="2" data-target="#carousel-${produto.id}">
                                        </li>
                                </ol>
                                <div class="carousel-inner">
                                        <div class="carousel-item active">
                                                <img class="d-block w-100" alt="Carousel Bootstrap First" src="${produto.urlFoto1}">
                                                <div class="carousel-caption">
                                                        
                                                </div>
                                        </div>
                                        <div class="carousel-item">
                                                <img class="d-block w-100" alt="Carousel Bootstrap Second" src="${produto.urlFoto2}">
                                                <div class="carousel-caption">
                                                        
                                                </div>
                                        </div>
                                        <div class="carousel-item">
                                                <img class="d-block w-100" alt="Carousel Bootstrap Third" src="${produto.urlFoto3}">
                                                <div class="carousel-caption">
                                                        
                                                </div>
                                        </div>
                                </div> <a class="carousel-control-prev" href="#carousel-${produto.id}" data-slide="prev"><span class="carousel-control-prev-icon"></span> <span class="sr-only">Previous</span></a> <a class="carousel-control-next" href="#carousel-${produto.id}" data-slide="next"><span class="carousel-control-next-icon"></span> <span class="sr-only">Next</span></a>
                        </div>

                    </div>

                </div>
            </c:forEach>
            <div class="row" id="rodape">
                <div class="col-md-12" id="rodapetxt">
                    <h4> Fale conosco </h4>
                    <p> Estamos localizados na Av. dos Estados 5.000 em Sto Andre. </p>
                    <p> Nosso email <a href="mailto:faleco@nosco.com">faleco@nosco.com</a></p> 
                </div>
            </div>
        </div>


    </body>
</html>








