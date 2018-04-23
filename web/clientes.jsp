<%-- 
    Document   : clientes
    Created on : 19/04/2018, 13:18:01
    Author     : PauloHGama
--%>
<%@page import="br.com.fatecpg.poo4.Clientes"%>
<%@page import="br.com.fatecpg.poo4.ArraysClienteFornecedores"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(request.getParameter("add") != null)
    {
        ArraysClienteFornecedores.valor = "Adicionar";
        Clientes c = new Clientes();
        c.setNome(request.getParameter("nome"));
        c.setCpf(request.getParameter("cpf"));
        c.setRg(request.getParameter("rg"));
        c.setEmail(request.getParameter("email"));
        c.setTelefone(request.getParameter("telefone"));
        c.setEndereco(request.getParameter("endereco"));
        ArraysClienteFornecedores.getClienteslist().add(c);
        response.sendRedirect(request.getRequestURI());
    }
    if(request.getParameter("alt") != null)
    {
        Clientes.controle = Integer.parseInt(request.getParameter("i"));
        ArraysClienteFornecedores.valor = "Alterar";
        ArraysClienteFornecedores.nome = "alterar";
        response.sendRedirect(request.getRequestURI());
        ArraysClienteFornecedores.requerido = "";
    }
    if(request.getParameter("alterar") != null)
    {
        Clientes c = new Clientes();
        String nome = null, cpf = null, rg = null, email = null, telefone = null, endereco = null;
        try
        {
            nome = request.getParameter("nome");
            cpf = request.getParameter("cpf");
            rg = request.getParameter("rg");
            email = request.getParameter("email");
            telefone = request.getParameter("telefone");
            endereco = request.getParameter("endereco");
        }
        catch(Exception ex)
        {
            
        }
        if(nome!= "")
        {
            c.setNome(nome);
        }
        else
        {
            c.setNome(ArraysClienteFornecedores.clienteslist.get(c.controle).getNome());
        }
        if(cpf!= "")
        {
            c.setCpf(cpf);
        }
        else
        {
            c.setCpf(ArraysClienteFornecedores.clienteslist.get(c.controle).getCpf());
                }
        if(rg != "")    
        {
            c.setRg(rg);
        }
        else
        {
            c.setRg(ArraysClienteFornecedores.clienteslist.get(c.controle).getRg());
        }
        if(email != "")    
        {
            c.setEmail(email);
        }
        else
        {
            c.setEmail(ArraysClienteFornecedores.clienteslist.get(c.controle).getEmail());
        }
        if(telefone != "")
        {
            c.setTelefone(telefone);
        }
        else
        {
            c.setTelefone(ArraysClienteFornecedores.clienteslist.get(c.controle).getTelefone());
        }
        if(endereco!= "")   
        {
            c.setEndereco(endereco);
        }
        else
        {
            c.setEndereco(ArraysClienteFornecedores.clienteslist.get(c.controle).getEndereco());
        }
        ArraysClienteFornecedores.getClienteslist().set(Clientes.controle, c);
        //response.sendRedirect(request.getRequestURI());
        ArraysClienteFornecedores.nome ="add";
        ArraysClienteFornecedores.valor ="Adicionar";
        ArraysClienteFornecedores.requerido = "requered";
    }
    if(request.getParameter("del") != null)
    {
        ArraysClienteFornecedores.getClienteslist().remove(Integer.parseInt(request.getParameter("i")));
        response.sendRedirect(request.getRequestURI());
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes</title>
        <%@include file="WEB-INF/jspf/link.jspf"%>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf"%>
        <h1 align="center">Clientes</h1>
        <form>
            <table align="center">
                <tr><th>Nome:</th><td><input type="text" name="nome" <%=ArraysClienteFornecedores.requerido%>/></td></tr>
                <tr><th>CPF:</th><td><input type="text" name="cpf" <%=ArraysClienteFornecedores.requerido%>/></td></tr>
                <tr><th>RG:</th><td><input type="text" name="rg" <%=ArraysClienteFornecedores.requerido%>/></td></tr>
                <tr><th>Email:</th><td><input type="email" name="email" <%=ArraysClienteFornecedores.requerido%>/></td></tr>
                <tr><th>Telefone:</th><td><input type="text" name="telefone" <%=ArraysClienteFornecedores.requerido%>/></td></tr>
                <tr><th>Endereço:</th><td><input type="text" name="endereco" <%=ArraysClienteFornecedores.requerido%>/></td></tr>
                <tr align="right"><td colspan="2"><input type="submit" name="<%=ArraysClienteFornecedores.nome%>" value="<%=ArraysClienteFornecedores.valor%>"/></td></tr>
            </table>
        </form>
        <br><hr><br>
        <table border="1" align="center">
            <tr><th>Indice</th><th>Nome</th><th>CPF</th><th>RG</th><th>Email</th><th>Telefone</th><th>Endereço</th><td>-</td><td>-</td></tr>
            <%for(int i = 0; i < ArraysClienteFornecedores.getClienteslist().size(); i++){%>
                <tr>
                <td><%=i%></td>
                <td><%=ArraysClienteFornecedores.getClienteslist().get(i).getNome()%></td>
                <td><%=ArraysClienteFornecedores.getClienteslist().get(i).getCpf()%></td>
                <td><%=ArraysClienteFornecedores.getClienteslist().get(i).getRg()%></td>
                <td><%=ArraysClienteFornecedores.getClienteslist().get(i).getEmail()%></td>
                <td><%=ArraysClienteFornecedores.getClienteslist().get(i).getTelefone()%></td>
                <td><%=ArraysClienteFornecedores.getClienteslist().get(i).getEndereco()%></td>
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
