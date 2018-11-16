﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="Mainlinee.Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta name="viewport" content="width=divice-width, intial-scale=1"/>
	<title>Cadastre-se | Mainline</title>
	<link rel="icon" href="img/M_transparente.png"/>
	<link rel="stylesheet" type="text/css" href="CSS/cadastro.css"/>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300" rel="stylesheet" type='text/css'/>
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jquerymobile/1.4.5/jquery.mobile.min.css"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquerymobile/1.4.5/jquery.mobile.min.js"></script>
</head>
<body>
    <header class="cabecalho">
			<a href="index.html"><h1 class="logo"> Mainline - Monitoramento de Hardware. </h1></a>
			<!-- criando o botão de menu com icon do site (get started) - "i class="fa fa-bars fa-lg" (fa-lg vai fazer o icon ficar levemente maior) -->
			<button class="btn-menu"> <i class="fa fa-bars fa-lg"></i></button>
			<!-- criando o menu -->
			<nav class="menu">
				<a class="btn-close"><i class="fa fa-times"></i></a> <!-- é o link para fechar o menu. o "x" irá fechar o menu-->
				<ul>
					<li><a href="#">Início</a></li>
					<li><a href="#">Contato</a></li>
				</ul>
			</nav>
		</header>

    <form id="form1" runat="server">
        <div class="fundo">
		<div class="ctd">
			<h2>Nome</h2>
            <asp:TextBox CssClass="input" ID="txtnome" runat="server" placeholder="Nome Completo" required></asp:TextBox>
			<h2>Telefone</h2>
             <asp:TextBox CssClass="input" ID="txttelefone" runat="server" placeholder="Telefone" required></asp:TextBox>
             <h2>Nível de usuário</h2>
                <asp:DropDownList CssClass="input" runat="server" ID="isADM">
                    <asp:ListItem Value=null Text="--Selecione seu nível" />
                    <asp:ListItem Value=1 Text="ADM" />
                    <asp:ListItem Value=0 Text="NOC" />
                </asp:DropDownList>
            <h2>E-mail</h2>
            <asp:TextBox CssClass="input" ID="txtemail" runat="server" placeholder="E-mail" required></asp:TextBox>
			<h2>Senha</h2>
            <asp:TextBox CssClass="input" ID="txtsenha" runat="server" placeholder="Senha" required></asp:TextBox>
			<h2>Confirmar Senha</h2>
            <asp:TextBox CssClass="input" ID="txtconfSenha" runat="server" placeholder="Confirmar Senha" required></asp:TextBox>
		</div>
		<%--<button class="cadastrar"> Cadastrar <i class="fa fa-arrow-circle-right"></i></button>--%>
            <asp:Button Text="Cadastrar" CssClass="cadastrar" ID="btn_cadastrar" OnClick="btn_cadastrar_Click" runat="server"  />
	</div>
    </form>
    <footer class="rodape">
		<div class="social-icons">
			<a href="#"><i class="fa fa-facebook"></i></a>
			<a href="#"><i class="fa fa-twitter"></i></a>			
			<a href="#"><i class="fa fa-instagram"></i></a>
			<a href="#"><i class="fa fa-envelope"></i></a>
		</div>
		<p class="copyright"> 
			Copyright © Mainline 2018. Todos os direitos reservados. </p>
		</footer>
    <script src="http://code.jquery.com/jquery-1.12.0.min.js"></script>
		<script>
			$(document).ready(function(){
        	$(".btn-menu").click(function(){
          	$(".menu").show();
        	});
        	$(".btn-close").click(function(){
         	$(".menu").hide();
        	});
         	});﻿
	</script>


</body>
</html>
