<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@include file="../conexao.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="navbar navbar-inverse">
            <div class="navbar-inner">
                <a class="brand" href="../index.jsp">Colégio Help - Buscar Aluno</a>
                <ul class="nav">
                    <li class="active"><a href="../alunos/cadastrarAluno.jsp">Cadastrar</a></li>
                    <li><a href="../listar/listarAlunos.jsp">Listar</a></li>
                    <li><a href="buscaAluno.jsp">Buscar</a></li>
                    <li><a href="../index.jsp">Voltar</a></li>
                </ul>
            </div>
        </div>

        <form>
            <table>
                <tr>
                    <td>ID do Aluno: </td>
                    <td><input type="text" name="id">
                </tr>
                <tr>
                    <td><input value="Buscar" type="submit" name="id">
                </tr>
            </table>
        </form>
        <table>
            <%            String nome = "";
                String cpf = "";
                String fone = "";
                String email = "";
                String id = request.getParameter("id");
                if (id != "") {
                    ResultSet res = stm.executeQuery("select * from ALUNOS where id=" + id);

                    if (res.next()) {
                        nome = res.getString(2);
                        cpf = res.getString(3);
                        fone = res.getString(4);
                        email = res.getString(5);
            %>
        </table>
        <form action="buscaAluno.jsp" method="get" name="frmAluno">
            <table>

                <tr>
                    <td>Nome:</td>
                    <td><input readonly="readonly" name="nome" type="text" value="<%=nome%>"/></td>
                </tr>
                <tr>
                    <td>CPF:</td>
                    <td><input readonly="readonly" name="cpf" type="text" value="<%=cpf%>"/></td>
                </tr>
                <tr>
                    <td>Telefone:</td>
                    <td><input readonly="readonly" name="fone" type="text" value="<%=fone%>"/></td>
                </tr>
                <tr>
                    <td>E-mail:</td>
                    <td><input readonly="readonly" name="email" type="text" value="<%=email%>"/></td>
                </tr>
                
                <%
                        } else {
                            out.println("Sem usuários com esse ID.");
                        }
                    } else {
                        out.println("Insira um ID.");
                    }
                %>
            </table>
        </form>
    </body>
</html>
