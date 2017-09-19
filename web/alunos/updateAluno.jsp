<%@page import="java.sql.ResultSet"%>
<%@include file="../conexao.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atualizar Aluno</title>
    </head>
    <body>
        <div class="navbar navbar-inverse">
            <div class="navbar-inner">
                <a class="brand" href="../index.jsp">Colégio Help - Atualizar Aluno</a>
                <ul class="nav">
                    <li class="active"><a href="../alunos/cadastrarAluno.jsp">Cadastrar</a></li>
                    <li><a href="../listar/listarAlunos.jsp">Listar</a></li>
                    <li><a href="../busca/buscaAluno.jsp">Buscar</a></li>
                    <li><a href="../index.jsp">Voltar</a></li>
                </ul>
            </div>
        </div>


        <%            String nome = "";
            String cpf = "";
            String fone = "";
            String email = "";
            int id = Integer.parseInt(request.getParameter("id"));

            if (request.getParameter("nome") != null) {
                nome = request.getParameter("nome");
                cpf = request.getParameter("cpf");
                fone = request.getParameter("fone");
                email = request.getParameter("email");

                String sql = "Update alunos set nome='" + nome + "',cpf='" + cpf + "',fone='" + fone + "',email='" + email + "' where id=" + id;
                int resultado = stm.executeUpdate(sql);
                if (resultado > 0) {
                    out.println("Registro atualizado com sucesso.");
                } else {
                    out.println("Registro não incluido.");
                }
            } else {
                ResultSet res = stm.executeQuery("select * from alunos where id=" + id);
                if (res.next()) {

                    nome = res.getString(2);
                    cpf = res.getString(3);
                    fone = res.getString(4);
                    email = res.getString(5);

                } else {
                    out.println("Sem usuários");
                }
            }

        %>

        <form action="updateAluno.jsp" method="get">
            <table>
                <tr>
                    <td>ID:</td>
                    <td><input readonly="readonly" name="id" type="text" value="<%=id%>" /></td>
                </tr>                
                <tr>
                    <td>Nome:</td>
                    <td><input name="nome" type="text" value="<%=nome%>"/></td>
                </tr><tr>
                    <td>CPF:</td>
                    <td><input name="cpf" type="text" value="<%=cpf%>"/></td>
                </tr>
                <tr>
                    <td>Telefone:</td>
                    <td><input type="text" name="fone" value="<%=fone%>" /></td>
                </tr>
                <tr>
                    <td>E-mail:</td>
                    <td><input type="text" name="email" value="<%=email%>" /></td>
                </tr>
            </table>
                
            <input type="submit" value="Atualizar" name="atualizar"/>
            <a href="../listar/listarAlunos.jsp"><input type="button" value="Voltar" name="limpar"/></a>

        </form>
    </body>
</html>
