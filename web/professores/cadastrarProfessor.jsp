
<%@include file="../conexao.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Professores</title>
    </head>
    <body>
        <div class="navbar navbar-inverse">
            <div class="navbar-inner">
                <a class="brand" href="../index.jsp">Colégio Help - Cadastrar Professores</a>
                <ul class="nav">
                    <li class="active"><a href="cadastrarProfessor.jsp">Cadastrar</a></li>
                    <li><a href="../listar/listarProfessores.jsp">Listar</a></li>
                    <li><a href="../busca/buscaProfessor.jsp">Buscar</a></li>
                    <li><a href="../index.jsp">Voltar</a></li>
                </ul>
            </div>
        </div>
        <%                if (request.getParameter("nome") == null) {
        %>
        <form method="POST">
            <table>
                <tr>
                    <td>Nome: </td>
                    <td><input type="text" name="nome">
                </tr>
                <tr>
                    <td>CPF: </td>
                    <td><input type="text" name="cpf">
                </tr>
                <tr>
                    <td>Telefone: </td>
                    <td><input type="text" name="fone">
                </tr>
                <tr>
                    <td>E-mail: </td>
                    <td><input type="text" name="email">
                </tr>
                <tr>
                    <td>Disciplina: </td>
                    <td><input type="text" name="disciplina">
                </tr>
                <tr>
                    <td>
                        <input type="submit" name="salvar" value="Salvar">
                    </td>
                    <td>
                        <input type="reset" name="limpar" value="Limpar">
                    </td>
                </tr>
            </table>
        </form>
        <%
        } else {
            String nome = request.getParameter("nome");
            String cpf = request.getParameter("cpf");
            String fone = request.getParameter("fone");
            String email = request.getParameter("email");
            String disciplina = request.getParameter("disciplina");

            String sql = "insert into professores(nome, cpf, fone, email, disciplina) values ('" + nome + "','" + cpf + "','" + fone + "','" + email + "','" + disciplina + "')";

            int res = stm.executeUpdate(sql);
            if (res > 0) {
                out.println("Registro incluido com sucesso.");%>

        <%        } else {
                    out.println("Registro não incluído.");
                }
            }
        %>

    </body>
</html>