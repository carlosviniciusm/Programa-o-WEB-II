<%@page import="java.sql.ResultSet"%>
<%@include file="../conexao.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atualizar Professores</title>
    </head>
    <body>
        <div class="navbar navbar-inverse">
            <div class="navbar-inner">
                <a class="brand" href="../index.jsp">Colégio Help - Atualizar Professores</a>
                <ul class="nav">
                    <li class="active"><a href="cadastrarProfessor.jsp">Cadastrar</a></li>
                    <li><a href="../listar/listarProfessores.jsp">Listar</a></li>
                    <li><a href="../busca/buscaProfessor.jsp">Buscar</a></li>
                    <li><a href="../index.jsp">Voltar</a></li>
                </ul>
            </div>
        </div>


        <%            String nome = "";
            String cpf = "";
            String fone = "";
            String email = "";
            String disciplina = "";
            int id = Integer.parseInt(request.getParameter("id"));

            if (request.getParameter("nome") != null) {
                nome = request.getParameter("nome");
                cpf = request.getParameter("cpf");
                fone = request.getParameter("fone");
                email = request.getParameter("email");
                disciplina = request.getParameter("disciplina");

                String sql = "Update professores set nome='" + nome + "',cpf='" + cpf + "',fone='" + fone + "',email='" + email + "',disciplina='" + disciplina + "' where id=" + id;
                int resultado = stm.executeUpdate(sql);
                if (resultado > 0) {
                    out.println("Registro atualizado com sucesso.");
                } else {
                    out.println("Registro não incluido.");
                }
            } else {
                ResultSet res = stm.executeQuery("select * from professores where id=" + id);
                if (res.next()) {

                    nome = res.getString(2);
                    cpf = res.getString(3);
                    fone = res.getString(4);
                    email = res.getString(5);
                    disciplina = res.getString(6);

                } else {
                    out.println("Sem usuários");
                }
            }

        %>

        <form action="updateProfessores.jsp" method="get">
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
                <tr>
                    <td>Disciplina:</td>
                    <td><input type="text" name="disciplina" value="<%=disciplina%>" /></td>
                </tr>
            </table>
                
            <input type="submit" value="Atualizar" name="atualizar"/>
            <a href="../listar/listarProfessores.jsp"><input type="button" value="Voltar" name="voltar"/></a>

        </form>
    </body>
</html>
