<%@ page language="java" import="java.util.List, model.Report" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Relatos Registrados</title>
    <link rel="stylesheet" href="Estilos.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand" href="#">ReclamaAqua</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="home.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="about.jsp">Sobre</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="contact.jsp">Contato</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="viewReports">Ver Meus Relatos</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container mt-5">
        <h2>Relatos Registrados</h2>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Tipo</th>
                    <th>Data</th>
                    <th>Hora</th>
                    <th>Descrição</th>
                    <th>Endereço</th>
                    <th>Usuário</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    List<Report> reports = (List<Report>) request.getAttribute("reports");
                    if (reports != null) {
                        for (Report report : reports) { 
                %>
                <tr>
                    <td><%= report.getId() %></td>
                    <td><%= report.getType() %></td>
                    <td><%= report.getDate() %></td>
                    <td><%= report.getTime() %></td>
                    <td><%= report.getDescription() %></td>
                    <td><%= report.getAddress() %></td>
                    <td><%= report.getUser() != null ? report.getUser().getName() : "Desconhecido" %></td>
                </tr>
                <% 
                        } 
                    } 
                %>
            </tbody>
        </table>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
