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
<link href="css/styles.css" rel="stylesheet">
<link href="css/errors.css" rel="stylesheet">
<title>ProjetoWeb - Página de Cadastro de Usuário</title>
</head>
<body>
	<div class="container">
		<div class="col-lg-6 offset-lg-3 col-sm-12">
			<c:if test="${result == 'notRegistered'}">
				<div class="alert alert-danger alert-dismissible fade show"
					role="alert">
					E-mail já cadastrado. Tente novamente.
					<button type="button" class="btn-close" data-bs-dismiss="alert"
						aria-label="Close"></button>
				</div>
			</c:if>
			
			<form action="userRegister" method="post" id="form1">
				<h1 class="text-center">Cadastre-se</h1>

				<div class="mb-2">
					<label for="name">Nome completo*</label> <input type="text"
						name="name" id="name" class="form-control" minlength="3"
						maxlength="50" required="required"> <span id="0"></span>
				</div>

				<div class="mb-2">
					<label for="email">E-mail*</label> <input type="email" name="email"
						id="email" class="form-control" required="required"> <span
						id="1"></span>
				</div>

				<div class="mb-2">
					<label for="password">Senha*</label> <input type="password"
						name="password" id="password" class="form-control" minlength="6"
						maxlength="12" required="required"> <span id="2"></span>
				</div>

				<div class="mb-2">
					<label for="confirmPassword">Confirmação de Senha*</label> <input
						type="password" name="confirmPassword" id="confirmPassword"
						class="form-control" minlength="6" maxlength="12"
						required="required"> <span id="3"></span>
				</div>

				<div class="mb-2">
					<label for="dateOfBirth">Data de Nascimento*</label> <input
						type="date" name="dateOfBirth" id="dateOfBirth"
						class="form-control" max="2012-12-31" required="required">
					<span id="4"></span>
				</div>

				<div class="mb-2">
					<label for="area">Bairro*</label> 
					<select class="form-select" name="area" id="area" required="required">
						<option value="" selected>Selecione</option>
						<option value="ALTOS_DO_JARAGUA">Altos do Jaraguá</option>
						<option value="ALTOS_DE_PINHEIROS">Altos de Pinheiros</option>
						<option value="CAMPOS_VILLE">Campos Ville</option>
						<option value="CENTRO">Centro</option>
						<option value="CHACARA_FLORA">Chácara Flora</option>
						<option value="CHACARA_VELOSA">Chácara Velosa</option>
						<option value="CIDADE_JARDIM">Cidade Jardim</option>
						<option value="FONTE_LUMINOSA">Fonte Luminosa</option>
						<option value="ACLIMACAO">Aclimação</option>
						<option value="ADALBERTO_ROXO">Adalberto Roxo</option>
						<option value="ADALGISA">Adalgisa</option>
						<option value="AGUAS_DO_PAIOL">Águas do Paiol</option>
						<option value="ALMEIDA">Almeida</option>
						<option value="ALTOS_DO_CECAP">Altos do Cecap</option>
						<option value="AMERICA">América</option>
						<option value="ANA_ADELAIDE">Ana Adelaide</option>
						<option value="ARANGA">Arangá</option>
						<option value="ARCO_IRIS">Arco-íris</option>
						<option value="ARTICO">Ártico</option>
						<option value="BIAGIONI">Biagioni</option>
						<option value="BOTANICO">Botânico</option>
						<option value="BRASIL">Brasil</option>
						<option value="BRASILIA">Brasília</option>
						<option value="CRISTO_REI">Cristo Rei</option>
						<option value="CRUZEIRO_DO_SUL">Cruzeiro do Sul</option>
						<option value="JARDIM_DAS_ESTACOES">Jardim das Estações</option>
						<option value="JARDIM_DAS_FLORES">Jardim das Flores</option>
						<option value="JARDIM_DAS_PAINEIRAS">Jardim das Paineiras</option>
						<option value="DEL_REI">Del Rei</option>
						<option value="JARDIM_DO_BOSQUE">Jardim do Bosque</option>
						<option value="JARDIM_DO_CARMO">Jardim do Carmo</option>
						<option value="DOM_PEDRO">Dom Pedro</option>
						<option value="DOMINGOS_SAVIO">Domingos Sávio</option>
						<option value="JARDIM_DOS_MANACAS">Jardim dos Manacás</option>
						<option value="DUMONT">Dumont</option>
						<option value="JARDIM_ELlANA">Jardim Eliana</option>
						<option value="JARDIM_ESPLANADA">Jardim Esplanada</option>
						<option value="JARDIM_EUROPA">Jardim Europa</option>
						<option value="JARDIM_FLORIDIANA">Jardim Floridiana</option>
						<option value="JARDIM_GARDENIAS">Jardim Gardenias</option>
						<option value="HIGIENOPOLIS">Higienópolis</option>
						<option value="IMPERADOR">Imperador</option>
						<option value="IMPERIAL">Imperial</option>
						<option value="INDAIA">Indaia</option>
						<option value="MANGIACAPRA">Mangiacapra</option>
						<option value="MARACANA">Maracanã</option>
						<option value="MARIA_LUIZA">Maria Luiza</option>
						<option value="MARTINEZ">Martinez</option>
						<option value="MORADA_DO_SOL">Morada do Sol</option>
						<option value="MORUMBI">Morumbi</option>
						<option value="NOVA_AMERICA">Nova América</option>
						<option value="NOVA_ARARAQUARA">Nova Araraquara</option>
						<option value="NOVA_EPOCA">Nova Época</option>
						<option value="PADRE_ANCHIETA">Padre Anchieta</option>
						<option value="PALMARES">Palmares</option>
						<option value="PAULISTANO">Paulistano</option>
						<option value="PINHEIROS">Pinheiros</option>
						<option value="PORTUGAL">Portugal</option>
						<option value="PRIMOR">Primor</option>
						<option value="QUITANDINHA">Quitandinha</option>
						<option value="RAFAELA_AMOROSO_MICELLI">Rafaela Amoroso Micelli</option>
						<option value="REGINA">Regina</option>
						<option value="IEDA">Ieda</option>
						<option value="ITALIA">Italia</option>
						<option value="PARAISO">Paraíso</option>
						<option value="SANTA_MONICA">Santa Monica</option>
						<option value="SILVESTRE">Silvestre</option>
						<option value="SANTA_ANGELINA">Santa Angelina</option>
						<option value="SANTA_CLARA">Santa Clara</option>
						<option value="SANTA_JULIA">Santa Julia</option>
						<option value="SANTA_MARTA">Santa Marta</option>
						<option value="SANTA_THEREZA">Santa Thereza</option>
						<option value="SANTO_ANTONIO">Santo Antonio</option>
						<option value="SAO_RAFAEL">São Rafael</option>
						<option value="SERRA_AZUL">Serra Azul</option>
						<option value="SILVANIA">Silvânia</option>
						<option value="TABAPUA">Tabapua</option>
						<option value="TAMOIO">Tamoio</option>
						<option value="TANGARA">Tangará</option>
						<option value="TINEN">Tinen</option>
						<option value="UIRAPURU">Uirapuru</option>
						<option value="UNIVERSAL">Universal</option>
						<option value="VENEZA">Veneza</option>
						<option value="ZAVANELLA">Zavanella</option>
						<option value="ALVORADA">Alvorada</option>
						<option value="HORTENCIAS">Hortências</option>
						<option value="LARANJEIRAS">Laranjeiras</option>
						<option value="GRAMADO">Gramado</option>
						<option value="IGACABA">Igaçaba</option>
						<option value="PLANALTO">Planalto</option>
						<option value="IGUATEMI">Iguatemi</option>
						<option value="PARQUE_DO_VALLE">Parque do Valle</option>
						<option value="LAURA_MOLINA">Laura Molina</option>
						<option value="VALE_DO_SOL">Vale do Sol</option>
						<option value="PARQUE_SAO_PAULO">Parque São Paulo</option>
						<option value="ACAPULCO">Acapulco</option>
						<option value="CAMBUY">Cambuy</option>
						<option value="LUPO">Lupo</option>
						<option value="SAO_GERALDO">São Geraldo</option>
						<option value="SELMI_DEI">Selmi dei</option>
						<option value="VICTORIO_DE_SANTI">Victório de Santi</option>
						<option value="VILA_BIAGIONI">Vila Biagioni</option>
						<option value="VILA_CIDADE_INDUSTRIAL">Vila Cidade Industrial</option>
						<option value="VILA_DE_ARACOARA">Vila de Aracoara</option>
						<option value="VILA_DER">Vila DER</option>
						<option value="VILA_DO_SERVIDOR">Vila do Servidor</option>
						<option value="VILA_DONOFRE">Vila Donofre</option>
						<option value="VILA_ESPERANCA">Vila Esperança</option>
						<option value="VILA_FERROVIARIA">Vila Ferroviária</option>
						<option value="VILA_FURLAN">Vila Furlan</option>
						<option value="VILA_GASPAR">Vila Gaspar</option>
						<option value="VILA_GUAIANAZES">Vila Guaianazes</option>
						<option value="VILA_HARMONIA">Vila Harmonia</option>
						<option value="VILA_HIGIA">Vila Higia</option>
						<option value="VILA_MELHADO">Vila Melhado</option>
						<option value="VILA_PROGRESSO">Vila Progresso</option>
						<option value="VILA_SANTANA">Vila Santana</option>
						<option value="VILA_SEDENHO">Vila Sedenho</option>
						<option value="VILA_STANDARD">Vila Standard</option>
						<option value="VILA_SUCONASA">Vila Suconasa</option>
						<option value="VILA_VIEIRA">Vila Vieira</option>
						<option value="VILA_XAVIER">Vila Xavier</option>
						<option value="VILA_YAMADA">Vila Yamada</option>
						<option value="YOLANDA_OPICE">Yolanda Ópice</option>
					</select> <span id="125"></span>
				</div>

				<div class="mb-2">
					<button type="submit" class="btn btn-primary">Salvar</button>
				</div>
			</form>
		</div>
	</div>

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
	<script src="js/user-register.js"></script>
</body>
</html>




