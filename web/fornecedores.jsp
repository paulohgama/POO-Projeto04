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
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fornecedores</title>
        <%@include file="WEB-INF/jspf/links.jspf"%>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf"%>
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
        <%@include file="WEB-INF/jspf/footer.jspf"%>
    </body>
</html>
