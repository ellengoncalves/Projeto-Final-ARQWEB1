<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html lang="pt-BR">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link href="Estilos.css" rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css"
	rel="stylesheet">
<title>ProjetoWeb - Página de Login</title>
</head>
<body class="bg-light">
	<!-- Header with diagonal background -->
	<header class="header bg-white text-center">
		<div class="container"></div>
	</header>

	<!-- Main content -->
	<div
		class="container d-flex justify-content-center align-items-center min-vh-100">
		<div class="col-lg-4 col-sm-12">
			<c:choose>
				<c:when test="${result == 'registered'}">
					<div class="alert alert-success alert-dismissible fade show mb-4"
						role="alert">
						Usuário cadastrado com sucesso. Faça o login.
						<button type="button" class="btn-close" data-bs-dismiss="alert"
							aria-label="Close"></button>
					</div>
				</c:when>
				<c:when test="${result == 'loginError'}">
					<div class="alert alert-danger alert-dismissible fade show mb-4"
						role="alert">
						E-mail e/ou senha inválidos.
						<button type="button" class="btn-close" data-bs-dismiss="alert"
							aria-label="Close"></button>
					</div>
				</c:when>
			</c:choose>
			
			<form action="login" method="post"
				class="bg-white p-4 rounded shadow-sm">
				<h1 class="text-center mb-4">Login</h1>

				<div class="form-floating mb-3">
					<input type="email" name="email" id="email"
						class="form-control custom-input" placeholder="E-mail" required
						autofocus> <label for="email">E-mail</label>
				</div>

				<div class="form-floating mb-3 position-relative">
					<input type="password" name="password" id="password"
						class="form-control custom-input" placeholder="Senha" required>
					<label for="password">Senha</label> <span
						class="position-absolute top-50 end-0 translate-middle-y me-2">
						<i class="bi bi-eye" id="togglePassword" style="cursor: pointer;"></i>
					</span>
				</div>

				<div class="d-grid mb-3">
					<button type="submit" class="btn btn-primary custom-btn">Login</button>
				</div>

				<div class="text-center mt-3">
					<p>
						Não possui conta? <a href="user-register.jsp" class="text-primary">Cadastre-se</a>
					</p>
				</div>
			</form>
		</div>
	</div>

	<script src="js/scripts.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>

