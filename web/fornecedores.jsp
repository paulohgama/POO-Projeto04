<%--
    Document   : fornecedores
    Created on : Apr 20, 2018, 9:14:08 PM
    Author     : AnaBertini
--%>
<%@page import="br.com.fatecpg.poo4.Fornecedores"%>
<%@page import="br.com.fatecpg.poo4.ArraysClienteFornecedores"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if (request.getParameter("add") != null) {
        ArraysClienteFornecedores.valor = "Adicionar";
        Fornecedores f = new Fornecedores();
        f.setNome("nome");
        f.setCnpj("cnpj");
        f.setEmail("email");
        f.setEndereco("endereco");
        f.setRazaoSocial("razaoSocial");
        f.setTelefone("telefone");
        ArraysClienteFornecedores.getFornecedoreslist().add(f);
        response.sendRedirect(request.getRequestURI());
    }
    if (request.getParameter("alt") != null) {
        Fornecedores.controle = Integer.parseInt(request.getParameter("i"));
        ArraysClienteFornecedores.valor = "Alterar";
        ArraysClienteFornecedores.nome = "alterar";
        response.sendRedirect(request.getRequestURI());
        ArraysClienteFornecedores.requerido = "";
    }
    if (request.getParameter("alterar") != null) {
        Fornecedores f = new Fornecedores();
        String nome = null, cnpj = null, email = null, endereco = null, razaoSocial = null, telefone = null;
        try {
            nome = request.getParameter("nome");
            cnpj = request.getParameter("cnpj");
            email = request.getParameter("email");
            endereco = request.getParameter("endereco");
            razaoSocial = request.getParameter("razaoSocial");
            telefone = request.getParameter("telefone");
        } catch (Exception ex) {

        }
        if (nome != "") {
            f.setNome(nome);
        } else {
            f.setNome(ArraysClienteFornecedores.fornecedoresList.get(f.controle).getNome());
        }
        if (cnpj != "") {
            f.setCnpj(cnpj);
        } else {
            f.setCnpj(ArraysClienteFornecedores.fornecedoresList.get(f.controle).getCnpj());
        }
        if (email != "") {
            f.setEmail(email);
        } else {
            f.setEmail(ArraysClienteFornecedores.fornecedoresList.get(f.controle).getEmail());
        }
        if (endereco != "") {
            f.setEndereco(endereco);
        } else {
            f.setEndereco(ArraysClienteFornecedores.fornecedoresList.get(f.controle).getEndereco());
        }
        if (razaoSocial != "") {
            f.setRazaoSocial(razaoSocial);
        } else {
            f.setRazaoSocial(ArraysClienteFornecedores.fornecedoresList.get(f.controle).getRazaoSocial());
        }
        if (telefone != "") {
            f.setTelefone(telefone);
        } else {
            f.setTelefone(ArraysClienteFornecedores.fornecedoresList.get(f.controle).getTelefone());
        }
        ArraysClienteFornecedores.getFornecedoreslist().set(Fornecedores.controle, f);
        response.sendRedirect(request.getRequestURI());
        ArraysClienteFornecedores.nome = "add";
        ArraysClienteFornecedores.valor = "Adicionar";
        ArraysClienteFornecedores.requerido = "requered";
    }
    if (request.getParameter("del") != null) {
        ArraysClienteFornecedores.getFornecedoreslist().remove(Integer.parseInt(request.getParameter("i")));
        response.sendRedirect(request.getRequestURI());
    }
%>

<html>
    <html>
    <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Clientes e Fornecedores</title>

    <!-- Bootstrap core CSS -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/business-casual.min.css" rel="stylesheet">

  </head>
  <body>


     <nav class="navbar navbar-expand-lg navbar-dark bg-secondary py-lg-4" id="mainNav">
      <div class="container">
        <a class="navbar-brand text-uppercase text-expanded font-weight-bold d-lg-none" href="#">Start Bootstrap</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav mx-auto">
            <li class="nav-item px-lg-4">
              <a class="nav-link text-uppercase text-expanded" href="home.jsp">Home
                <span class="sr-only"></span>
              </a>
            </li>
            <li class="nav-item px-lg-4">
              <a class="nav-link text-uppercase text-expanded" href="clientes.jsp">Clientes</a>
            </li>
            <li class="nav-item px-lg-4">
              <a class="nav-link text-uppercase text-expanded" href="fornecedores.jsp">Fornecedores</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <section class="page-section cta">
        <center>
                <h1 align="center">Fornecedores</h1>
        <form>
            <table align="center">
                <tr><th>Nome:</th><td><input type="text" name="nome" <%=ArraysClienteFornecedores.requerido%>/></td></tr>
                <tr><th>Razao Social:</th><td><input type="text" name="razaoSocial" <%=ArraysClienteFornecedores.requerido%>/></td></tr>
                <tr><th>CNPJ:</th><td><input type="text" name="cnpj" <%=ArraysClienteFornecedores.requerido%>/></td></tr>
                <tr><th>Endereço:</th><td><input type="text" name="endereco" <%=ArraysClienteFornecedores.requerido%>/></td></tr>
                <tr><th>Telefone:</th><td><input type="text" name="telefone" <%=ArraysClienteFornecedores.requerido%>/></td></tr>
                <tr><th>Email:</th><td><input type="email" name="email" <%=ArraysClienteFornecedores.requerido%>/></td></tr>
                <tr align="right"><td colspan="2"><input type="submit" name="<%=ArraysClienteFornecedores.nome%>" value="<%=ArraysClienteFornecedores.valor%>"/></td></tr>
            </table>
        </form>
        <br><hr><br>
        <table border="1" align="center">
            <tr><th>Indice</th><th>Nome</th><th>Razao Social</th><th>CNPJ</th><th>Endereço</th><th>Telefone</th><th>E-mail</th><td>-</td><td>-</td></tr>
                    <%for (int i = 0; i < ArraysClienteFornecedores.getFornecedoreslist().size(); i++) {%>
            <tr>
                <td><%=i%></td>
                <td><%=ArraysClienteFornecedores.getFornecedoreslist().get(i).getNome()%></td>
                <td><%=ArraysClienteFornecedores.getFornecedoreslist().get(i).getRazaoSocial()%></td>
                <td><%=ArraysClienteFornecedores.getFornecedoreslist().get(i).getCnpj()%></td>
                <td><%=ArraysClienteFornecedores.getFornecedoreslist().get(i).getEndereco()%></td>
                <td><%=ArraysClienteFornecedores.getFornecedoreslist().get(i).getTelefone()%></td>
                <td><%=ArraysClienteFornecedores.getFornecedoreslist().get(i).getEmail()%></td>
                <td>
                    <form>
                        <input type="hidden" name="i" value="<%=i%>">
                        <input type="submit" name="alt" value="Alterar">
                    </form>
                </td>
                <td>
                    <form>
                        <input type="hidden" name="i" value="<%=i%>">
                        <input type="submit" name="del" value="Excluir">
                    </form>
                </td>
            </tr>
            <%}%>
        </table>
        </center>
    </section>

    <footer class="p-3 mb-2 bg-secondary text-white text-center py-5">
      <div class="container">
        <p class="text-white">FATECPG - 4º Ciclo ADS - Noturno</p> 
      </div>
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="jquery/jquery.min.js"></script>
    <script src="bootstrap/js/bootstrap.bundle.min.js"></script>

    
  </body>
</html>
