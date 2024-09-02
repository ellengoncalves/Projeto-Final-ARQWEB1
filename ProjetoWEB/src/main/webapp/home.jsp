<!doctype html>
<html lang="pt-BR">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ReclamaAqua - Página Inicial</title>
    <link rel="stylesheet" href="Estilos.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        .hero-section {
            background: url('hero-bg.jpg') no-repeat center center;
            background-size: cover;
            color: #fff;
            padding: 80px 0;
        }
        .icon {
            width: 40px;
            height: 40px;
            margin-right: 15px;
        }
        .section-title {
            margin-bottom: 30px;
            font-size: 2.5rem;
            font-weight: bold;
        }
        .step {
            display: flex;
            align-items: center;
            margin-bottom: 30px;
        }
        .step svg {
            fill: #007bff;
        }
        .btn-primary {
            background-color: #007bff;
            border: none;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand" href="#">ReclamaAqua</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Sobre</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contato</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="view-reports.jsp">Ver Meus Relatos</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <header class="hero-section text-center">
        <div class="container">
            <h1 class="display-4">Bem-vindo ao ReclamaAqua</h1>
            <p class="lead">Seu canal para relatar e acompanhar eventos de desastres naturais em Araraquara.</p>
            <a href="report-register.jsp" class="btn btn-primary btn-lg">Relatar Agora</a>
        </div>
    </header>

    <!-- Main Content -->
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-4">
                <div class="step">
                    <svg class="icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M3 17.25V19H21V17.25L12 12.75L3 17.25ZM12 13.85L19.5 17.25L12 21.65L4.5 17.25L12 13.85ZM12 3L3 8.5V11.5L12 16L21 11.5V8.5L12 3Z"/></svg>
                    <div>
                        <h4 class="section-title">Sobre a Cidade</h4>
                        <p>Araraquara é uma cidade com uma rica história e cultura, localizada no interior de São Paulo. Conheça mais sobre a cidade e suas características.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="step">
                    <svg class="icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M4 4V20H20V4H4ZM6 6H18V10H6V6ZM6 12H18V16H6V12ZM6 18H18V20H6V18Z"/></svg>
                    <div>
                        <h4 class="section-title">Missão do Site</h4>
                        <p>Nossa missão é fornecer uma plataforma confiável e eficiente para que os cidadãos possam relatar eventos de desastres naturais e ajudar a manter Araraquara segura.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="step">
                    <svg class="icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M12 21.35L10.55 19.91C5.4 15.62 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3 8.97 3 10.4 3.73 11.36 4.88 12.32 3.73 13.75 3 15.22 3 18.28 3 20.74 5.42 20.74 8.5 20.74 12.28 17.34 15.62 12.19 19.91L12 21.35Z"/></svg>
                    <div>
                        <h4 class="section-title">Benefícios de Relatar</h4>
                        <p>Relatar eventos ajuda a identificar áreas de risco e a melhorar a resposta a emergências, contribuindo para uma comunidade mais segura e informada.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="bg-light text-center py-4">
        <div class="container">
            <p class="mb-0">&copy; 2024 ReclamaAqua. Todos os direitos reservados.</p>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
