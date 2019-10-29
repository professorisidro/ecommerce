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
                <div class="col-md-3"> &nbsp; </div>
                <div class="col-md-6"> 
                    <form role="form" action="login" method="post">
				<div class="form-group">
					 
					<label for="exampleInputEmail1">
						Email address
					</label>
					<input type="email" class="form-control" id="exampleInputEmail1" name="txtEmail"/>
				</div>
				<div class="form-group">
					 
					<label for="exampleInputPassword1">
						Password
					</label>
					<input type="password" class="form-control" id="exampleInputPassword1" name="txtSenha"/>
				</div>
				
				<button type="submit" class="btn btn-primary">
					Submit
				</button>
			</form>
                </div>
                <div class="col-md-3"> &nbsp; </div>                
            </div>
            <div class="row">
                <div class="col-md-12">
                    <h4 align="center"> N&atilde;o &eacute; cadastrado? Clique <a href="newUser">AQUI</a></h4>
                </div>
            </div>
        </div>

        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/scripts.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    </body>
</html>