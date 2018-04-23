package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import br.com.fatecpg.poo4.Clientes;
import br.com.fatecpg.poo4.ArraysClienteFornecedores;

public final class clientes_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/WEB-INF/jspf/link.jspf");
    _jspx_dependants.add("/WEB-INF/jspf/menu.jspf");
    _jspx_dependants.add("/WEB-INF/jspf/footer.jspf");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");

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
        response.sendRedirect(request.getRequestURI());
        ArraysClienteFornecedores.nome ="add";
        ArraysClienteFornecedores.valor ="Adicionar";
        ArraysClienteFornecedores.requerido = "requered";
    }
    if(request.getParameter("del") != null)
    {
        ArraysClienteFornecedores.getClienteslist().remove(Integer.parseInt(request.getParameter("i")));
        response.sendRedirect(request.getRequestURI());
    }

      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Clientes</title>\n");
      out.write("        ");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<nav class=\"navbar navbar-inverse\">\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("    <div class=\"navbar-header\">\n");
      out.write("      <a class=\"navbar-brand\" href=\"#\">AB2P</a>\n");
      out.write("    </div>\n");
      out.write("    <ul class=\"nav navbar-nav\">\n");
      out.write("      <li class=\"active\"><a href=\"../../home.jsp\">Home</a></li>\n");
      out.write("      <li class=\"dropdown\"><a href=\"#\">Clientes</a></li>\n");
      out.write("      <li class=\"dropdown\"><a href=\"#\">Fornecedores</a></li>\n");
      out.write("    </ul>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("\n");
      out.write("        <h1 align=\"center\">Clientes</h1>\n");
      out.write("        <form>\n");
      out.write("            <table align=\"center\">\n");
      out.write("                <tr><th>Nome:</th><td><input type=\"text\" name=\"nome\" ");
      out.print(ArraysClienteFornecedores.requerido);
      out.write("/></td></tr>\n");
      out.write("                <tr><th>CPF:</th><td><input type=\"text\" name=\"cpf\" ");
      out.print(ArraysClienteFornecedores.requerido);
      out.write("/></td></tr>\n");
      out.write("                <tr><th>RG:</th><td><input type=\"text\" name=\"rg\" ");
      out.print(ArraysClienteFornecedores.requerido);
      out.write("/></td></tr>\n");
      out.write("                <tr><th>Email:</th><td><input type=\"email\" name=\"email\" ");
      out.print(ArraysClienteFornecedores.requerido);
      out.write("/></td></tr>\n");
      out.write("                <tr><th>Telefone:</th><td><input type=\"text\" name=\"telefone\" ");
      out.print(ArraysClienteFornecedores.requerido);
      out.write("/></td></tr>\n");
      out.write("                <tr><th>Endereço:</th><td><input type=\"text\" name=\"endereco\" ");
      out.print(ArraysClienteFornecedores.requerido);
      out.write("/></td></tr>\n");
      out.write("                <tr align=\"right\"><td colspan=\"2\"><input type=\"submit\" name=\"");
      out.print(ArraysClienteFornecedores.nome);
      out.write("\" value=\"");
      out.print(ArraysClienteFornecedores.valor);
      out.write("\"/></td></tr>\n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("        <br><hr><br>\n");
      out.write("        <table border=\"1\" align=\"center\">\n");
      out.write("            <tr><th>Indice</th><th>Nome</th><th>CPF</th><th>RG</th><th>Email</th><th>Telefone</th><th>Endereço</th><td>-</td><td>-</td></tr>\n");
      out.write("            ");
for(int i = 0; i < ArraysClienteFornecedores.getClienteslist().size(); i++){
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                <td>");
      out.print(i);
      out.write("</td>\n");
      out.write("                <td>");
      out.print(ArraysClienteFornecedores.getClienteslist().get(i).getNome());
      out.write("</td>\n");
      out.write("                <td>");
      out.print(ArraysClienteFornecedores.getClienteslist().get(i).getCpf());
      out.write("</td>\n");
      out.write("                <td>");
      out.print(ArraysClienteFornecedores.getClienteslist().get(i).getRg());
      out.write("</td>\n");
      out.write("                <td>");
      out.print(ArraysClienteFornecedores.getClienteslist().get(i).getEmail());
      out.write("</td>\n");
      out.write("                <td>");
      out.print(ArraysClienteFornecedores.getClienteslist().get(i).getTelefone());
      out.write("</td>\n");
      out.write("                <td>");
      out.print(ArraysClienteFornecedores.getClienteslist().get(i).getEndereco());
      out.write("</td>\n");
      out.write("                <td>\n");
      out.write("                    <form>\n");
      out.write("                        <input type=\"hidden\" name=\"i\" value=\"");
      out.print(i);
      out.write("\">\n");
      out.write("                        <input type=\"submit\" name=\"alt\" value=\"Alterar\">\n");
      out.write("                    </form>\n");
      out.write("                </td>\n");
      out.write("                <td>\n");
      out.write("                    <form>\n");
      out.write("                        <input type=\"hidden\" name=\"i\" value=\"");
      out.print(i);
      out.write("\">\n");
      out.write("                        <input type=\"submit\" name=\"del\" value=\"Excluir\">\n");
      out.write("                    </form>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            ");
}
      out.write("\n");
      out.write("        </table>\n");
      out.write("        ");
      out.write("<section id=\"footer-sec\">\n");
      out.write("  <div class=\"w3-container\">\n");
      out.write("    <div class=\"row  pad-bottom\" > \n");
      out.write("      <div class=\"col-md-4\">\n");
      out.write("        <h4> <strong>Atalhos</strong> </h4>\n");
      out.write("        <a href= \"amortizacao-americano.jsp\">Clientes</a><br/>\n");
      out.write("        <a href= \"amortizacao-constante.jsp\">Fornecedores</a><br/>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"col-md-4\">\n");
      out.write("        <h4> <strong>LocalizaÃ§Ã£o</strong> </h4>\n");
      out.write("        <p>\n");
      out.write("            PraÃ§a 19 de Janeiro, <br />\n");
      out.write("            Praia Grande - SP  <br />\n");
      out.write("            CEP - 10909094\n");
      out.write("          </p>\n");
      out.write("        <a href=\"#\" class=\"btn btn-primary\" >Contato</a>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</section>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
