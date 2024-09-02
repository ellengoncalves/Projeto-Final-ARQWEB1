<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>Registro de Relatos</title>
</head>
<body>
	<div class="container">
		<div class="col-lg-8 offset-lg-2 col-sm-12">
			<h1 class="text-center mb-4">Registro de Relatos</h1>
			<c:if test="${result == 'notRegistered'}">
				<div class="alert alert-danger alert-dismissible fade show"
					role="alert">
					Relatos não salvo. Efetue o login.
					<button type="button" class="btn-close" data-bs-dismiss="alert"
						aria-label="Close"></button>
				</div>
			</c:if>
			<c:if test="${result == 'registered'}">
				<div class="alert alert-success alert-dismissible fade show"
					role="alert">
					Relatos salvo com sucesso.
					<button type="button" class="btn-close" data-bs-dismiss="alert"
						aria-label="Close"></button>
				</div>
			</c:if>

			<form action="reportRegister" method="post">

				<c:choose>
					<c:when test="${report == null}">
						<h1 class="text-center">Nova Atividade</h1>
					</c:when>
					<c:when test="${report != null}">
						<h1 class="text-center">Edição de Atividade</h1>
					</c:when>
				</c:choose>

				<c:choose>
					<c:when test="${report == null}">
						<input type="hidden" name="id" value="0">
					</c:when>
					<c:when test="${report != null}">
						<input type="hidden" name="id" value="${report.id}">
					</c:when>
				</c:choose>

				<div class="mb-2">
					<label for="type">Tipo de Relato*</label> <select
						class="form-select" name="type" id="type" required="required">
						<c:if test="${report == null}">
							<option value="" selected>Selecione</option>
						</c:if>
						<c:choose>
							<c:when test="${report.type != 'ALAGAMENTO'}">
								<option value="ALAGAMENTO">Alagamento</option>
							</c:when>
							<c:when test="${report.type == 'ALAGAMENTO'}">
								<option value="ALAGAMENTO" selected>Alagamento</option>
							</c:when>
						</c:choose>
						<c:choose>
							<c:when test="${report.type != 'DESMORONAMENTO'}">
								<option value="DESMORONAMENTO">Desmoronamento</option>
							</c:when>
							<c:when test="${report.type == 'DESMORONAMENTO'}">
								<option value="DESMORONAMENTO" selected>Desmoronamento</option>
							</c:when>
						</c:choose>
						<c:choose>
							<c:when test="${report.type != 'QUEDA_ARVORE'}">
								<option value="QUEDA_ARVORE">Queda de Árvore</option>
							</c:when>
							<c:when test="${report.type == 'QUEDA_ARVORE'}">
								<option value="QUEDA_ARVORE" selected>Queda de Árvore</option>
							</c:when>
						</c:choose>
						<c:choose>
							<c:when test="${report.type != 'FURACAO'}">
								<option value="FURACAO">Furacão</option>
							</c:when>
							<c:when test="${report.type == 'FURACAO'}">
								<option value="FURACAO" selected>Furacão</option>
							</c:when>
						</c:choose>
						<c:choose>
							<c:when test="${report.type != 'INCENDIO'}">
								<option value="INCENDIO">Incêndio</option>
							</c:when>
							<c:when test="${report.type == 'INCENDIO'}">
								<option value="INCENDIO" selected>Incêndio</option>
							</c:when>
						</c:choose>
						<c:choose>
							<c:when test="${report.type != 'ACIDENTE_TRANSITO'}">
								<option value="ACIDENTE_TRANSITO">Acidente de trânsito</option>
							</c:when>
							<c:when test="${report.type == 'ACIDENTE_TRANSITO'}">
								<option value="ACIDENTE_TRANSITO" selected>Acidente de
									trânsito</option>
							</c:when>
						</c:choose>
						<c:choose>
							<c:when test="${report.type != 'INFRAESTRUTURA'}">
								<option value="INFRAESTRUTURA">Infraestrutura</option>
							</c:when>
							<c:when test="${report.type == 'INFRAESTRUTURA'}">
								<option value="INFRAESTRUTURA" selected>Infraestrutura</option>
							</c:when>
						</c:choose>
						<c:choose>
							<c:when test="${report.type != 'VANDALISMO'}">
								<option value="VANDALISMO">Vandalismo</option>
							</c:when>
							<c:when test="${report.type == 'VANDALISMO'}">
								<option value="VANDALISMO" selected>Vandalismo</option>
							</c:when>
						</c:choose>
						<c:choose>
							<c:when test="${report.type != 'POLUICAO'}">
								<option value="POLUICAO">Poluição</option>
							</c:when>
							<c:when test="${report.type == 'POLUICAO'}">
								<option value="POLUICAO" selected>Poluição</option>
							</c:when>
						</c:choose>
						<c:choose>
							<c:when test="${report.type != 'MAUS_TRATOS_ANIMAIS'}">
								<option value="MAUS_TRATOS_ANIMAIS">Maus tratos à
									animais</option>
							</c:when>
							<c:when test="${report.type == 'MAUS_TRATOS_ANIMAIS'}">
								<option value="MAUS_TRATOS_ANIMAIS" selected>Maus
									tratos à animais</option>
							</c:when>
						</c:choose>
						<c:choose>
							<c:when test="${report.type != 'EMERGENCIAS_MEDICAS'}">
								<option value="EMERGENCIAS_MEDICAS">Emergências Médicas</option>
							</c:when>
							<c:when test="${report.type == 'EMERGENCIAS_MEDICAS'}">
								<option value="EMERGENCIAS_MEDICAS" selected>Emergências
									Médicas</option>
							</c:when>
						</c:choose>
						<c:choose>
							<c:when test="${report.type != 'OUTRO'}">
								<option value="OUTRO">Outro</option>
							</c:when>
							<c:when test="${report.type == 'OUTRO'}">
								<option value="OUTRO" selected>Outro</option>
							</c:when>
						</c:choose>
					</select>
				</div>

				<div class="mb-2">
					<label for="neighborhood">Bairro*</label> <select
						class="form-select" name="neighborhood" id="neighborhood"
						required="required">
						<c:if test="${report == null}">
							<option value="" selected>Selecione</option>
						</c:if>
						<c:choose>
							<c:when test="${report.neighborhood != 'ALTOS_DE_PINHEIROS'}">
								<option value="ALTOS_DE_PINHEIROS">Altos de Pinheiros</option>
							</c:when>
							<c:when test="${report.neighborhood == 'ALTOS_DE_PINHEIROS'}">
								<option value="ALTOS_DE_PINHEIROS" selected>Altos de
									Pinheiros</option>
							</c:when>
						</c:choose>
						<c:choose>
							<c:when
								test="${report.neighborhood != 'ASSENTAMENTO_BELA_VISTA_DO_CHIBARRO'}">
								<option value="ASSENTAMENTO_BELA_VISTA_DO_CHIBARRO">Assentamento
									Bela Vista do Chibarro</option>
							</c:when>
							<c:when
								test="${report.neighborhood == 'ASSENTAMENTO_BELA_VISTA_DO_CHIBARRO'}">
								<option value="ASSENTAMENTO_BELA_VISTA_DO_CHIBARRO" selected>Assentamento
									Bela Vista do Chibarro</option>
							</c:when>
						</c:choose>
						<c:choose>
							<c:when test="${report.neighborhood != 'CAMPUS_VILLE'}">
								<option value="CAMPUS_VILLE">Campus Ville</option>
							</c:when>
							<c:when test="${report.neighborhood == 'CAMPUS_VILLE'}">
								<option value="CAMPUS_VILLE" selected>Campus Ville</option>
							</c:when>
						</c:choose>
						<c:choose>
							<c:when test="${report.neighborhood != 'CHACARA_D_ONOFRE'}">
								<option value="CHACARA_D_ONOFRE">Chácara D'Onofre</option>
							</c:when>
							<c:when test="${report.neighborhood == 'CHACARA_D_ONOFRE'}">
								<option value="CHACARA_D_ONOFRE" selected>Chácara
									D'Onofre</option>
							</c:when>
						</c:choose>
						<c:choose>
							<c:when test="${report.neighborhood != 'CHACARA_FLORA'}">
								<option value="CHACARA_FLORA">Chácara Flora</option>
							</c:when>
							<c:when test="${report.neighborhood == 'CHACARA_FLORA'}">
								<option value="CHACARA_FLORA" selected>Chácara Flora</option>
							</c:when>
						</c:choose>
						<c:choose>
							<c:when test="${report.neighborhood != 'CHACARAS_VELOSA'}">
								<option value="chacaras_velosa">Chácaras Velosa</option>
							</c:when>
							<c:when test="${report.neighborhood == 'CHACARAS_VELOSA'}">
								<option value="chacaras_velosa" selected>Chácaras
									Velosa</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'CIDADE_JARDIM'}">
								<option value="cidade_jardim">Cidade Jardim</option>
							</c:when>
							<c:when test="${report.neighborhood == 'CIDADE_JARDIM'}">
								<option value="cidade_jardim" selected>Cidade Jardim</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'CONDOMINIO_SATELITE'}">
								<option value="condominio_satelite">Condomínio Satélite</option>
							</c:when>
							<c:when test="${report.neighborhood == 'CONDOMINIO_SATELITE'}">
								<option value="condominio_satelite" selected>Condomínio
									Satélite</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'DISTRITO_INDUSTRIAL_I'}">
								<option value="distrito_industrial_i">Distrito
									Industrial I</option>
							</c:when>
							<c:when test="${report.neighborhood == 'DISTRITO_INDUSTRIAL_I'}">
								<option value="distrito_industrial_i" selected>Distrito
									Industrial I</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'DISTRITO_INDUSTRIAL_II'}">
								<option value="distrito_industrial_ii">Distrito
									Industrial II</option>
							</c:when>
							<c:when test="${report.neighborhood == 'DISTRITO_INDUSTRIAL_II'}">
								<option value="distrito_industrial_ii" selected>Distrito
									Industrial II</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when
								test="${report.neighborhood != 'DISTRITO_INDUSTRIAL_III'}">
								<option value="distrito_industrial_iii">Distrito
									Industrial III</option>
							</c:when>
							<c:when
								test="${report.neighborhood == 'DISTRITO_INDUSTRIAL_III'}">
								<option value="distrito_industrial_iii" selected>Distrito
									Industrial III</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'ESTACAO_DO_OURO'}">
								<option value="estacao_do_ouro">Estação do Ouro</option>
							</c:when>
							<c:when test="${report.neighborhood == 'ESTACAO_DO_OURO'}">
								<option value="estacao_do_ouro" selected>Estação do
									Ouro</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'ESTACAO_TUTOIA'}">
								<option value="estacao_tutoia">Estação Tutóia</option>
							</c:when>
							<c:when test="${report.neighborhood == 'ESTACAO_TUTOIA'}">
								<option value="estacao_tutoia" selected>Estação Tutóia</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_ACLIMACAO'}">
								<option value="jardim_aclimacao">Jardim Aclimação</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_ACLIMACAO'}">
								<option value="jardim_aclimacao" selected>Jardim
									Aclimação</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when
								test="${report.neighborhood != 'JARDIM_ADALBERTO_DE_OLIVEIRA_ROXO'}">
								<option value="jardim_adalberto_de_oliveira_roxo">Jardim
									Adalberto de Oliveira Roxo</option>
							</c:when>
							<c:when
								test="${report.neighborhood == 'JARDIM_ADALBERTO_DE_OLIVEIRA_ROXO'}">
								<option value="jardim_adalberto_de_oliveira_roxo" selected>Jardim
									Adalberto de Oliveira Roxo</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_AMERICA'}">
								<option value="jardim_america">Jardim América</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_AMERICA'}">
								<option value="jardim_america" selected>Jardim América</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_ARANGA'}">
								<option value="jardim_aranga">Jardim Aranga</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_ARANGA'}">
								<option value="jardim_aranga" selected>Jardim Aranga</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_ARARAQUARA'}">
								<option value="jardim_araraquara">Jardim Araraquara</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_ARARAQUARA'}">
								<option value="jardim_araraquara" selected>Jardim
									Araraquara</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_ARCO_IRIS'}">
								<option value="jardim_arco_iris">Jardim Arco-Íris</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_ARCO_IRIS'}">
								<option value="jardim_arco_iris" selected>Jardim
									Arco-Íris</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_AGUAS_DO_PAIOL'}">
								<option value="jardim_aguas_do_paiol">Jardim Águas do
									Paiol</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_AGUAS_DO_PAIOL'}">
								<option value="jardim_aguas_do_paiol" selected>Jardim
									Águas do Paiol</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_ARTICO'}">
								<option value="jardim_artico">Jardim Ártico</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_ARTICO'}">
								<option value="jardim_artico" selected>Jardim Ártico</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_BOTANICO'}">
								<option value="jardim_botanico">Jardim Botânico</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_BOTANICO'}">
								<option value="jardim_botanico" selected>Jardim
									Botânico</option>
							</c:when>
						</c:choose>
						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_BRASIL'}">
								<option value="jardim_brasil">Jardim Brasil</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_BRASIL'}">
								<option value="jardim_brasil" selected>Jardim Brasil</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_BRASILIA'}">
								<option value="jardim_brasilia">Jardim Brasília</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_BRASILIA'}">
								<option value="jardim_brasilia" selected>Jardim
									Brasília</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_CRUZEIRO_DO_SUL'}">
								<option value="jardim_cruzeiro_do_sul">Jardim Cruzeiro
									do Sul</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_CRUZEIRO_DO_SUL'}">
								<option value="jardim_cruzeiro_do_sul" selected>Jardim
									Cruzeiro do Sul</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_DEL_REY'}">
								<option value="jardim_del_rey">Jardim Del Rey</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_DEL_REY'}">
								<option value="jardim_del_rey" selected>Jardim Del Rey</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_DOM_PEDRO_I'}">
								<option value="jardim_dom_pedro_i">Jardim Dom Pedro I</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_DOM_PEDRO_I'}">
								<option value="jardim_dom_pedro_i" selected>Jardim Dom
									Pedro I</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_DOS_IPES'}">
								<option value="jardim_dos_ipes">Jardim dos Ipês</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_DOS_IPES'}">
								<option value="jardim_dos_ipes" selected>Jardim dos
									Ipês</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_DOS_MANACAS'}">
								<option value="jardim_dos_manacas">Jardim dos Manacás</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_DOS_MANACAS'}">
								<option value="jardim_dos_manacas" selected>Jardim dos
									Manacás</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_DUMONT'}">
								<option value="jardim_dumont">Jardim Dumont</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_DUMONT'}">
								<option value="jardim_dumont" selected>Jardim Dumont</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_ELIANA'}">
								<option value="jardim_eliana">Jardim Eliana</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_ELIANA'}">
								<option value="jardim_eliana" selected>Jardim Eliana</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_EUROPA'}">
								<option value="jardim_europa">Jardim Europa</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_EUROPA'}">
								<option value="jardim_europa" selected>Jardim Europa</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_FLORIDIANA'}">
								<option value="jardim_floridiana">Jardim Floridiana</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_FLORIDIANA'}">
								<option value="jardim_floridiana" selected>Jardim
									Floridiana</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_GAIVOTAS'}">
								<option value="jardim_gaivotas">Jardim das Gaivotas</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_GAIVOTAS'}">
								<option value="jardim_gaivotas" selected>Jardim das
									Gaivotas</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_HIGIENOPOLIS'}">
								<option value="jardim_higienopolis">Jardim Higienópolis</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_HIGIENOPOLIS'}">
								<option value="jardim_higienopolis" selected>Jardim
									Higienópolis</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_HORTENSIAS'}">
								<option value="jardim_hortensias">Jardim Hortênsias</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_HORTENSIAS'}">
								<option value="jardim_hortensias" selected>Jardim
									Hortênsias</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_IMPERIAL'}">
								<option value="jardim_imperial">Jardim Imperial</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_IMPERIAL'}">
								<option value="jardim_imperial" selected>Jardim
									Imperial</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_IMPERADOR'}">
								<option value="jardim_imperador">Jardim Imperador</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_IMPERADOR'}">
								<option value="jardim_imperador" selected>Jardim
									Imperador</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_INDAIA'}">
								<option value="jardim_indaia">Jardim Indaiá</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_INDAIA'}">
								<option value="jardim_indaia" selected>Jardim Indaiá</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_ITALIA'}">
								<option value="jardim_italia">Jardim Itália</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_ITALIA'}">
								<option value="jardim_italia" selected>Jardim Itália</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_JOINVILLE'}">
								<option value="jardim_joinville">Jardim Joinville</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_JOINVILLE'}">
								<option value="jardim_joinville" selected>Jardim
									Joinville</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_MARIA_LUIZA'}">
								<option value="jardim_maria_luiza">Jardim Maria Luiza</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_MARIA_LUIZA'}">
								<option value="jardim_maria_luiza" selected>Jardim
									Maria Luiza</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_MARTINEZ'}">
								<option value="jardim_martinez">Jardim Martinez</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_MARTINEZ'}">
								<option value="jardim_martinez" selected>Jardim
									Martinez</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_MORADA_DO_SOL'}">
								<option value="jardim_morada_do_sol">Jardim Morada do
									Sol</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_MORADA_DO_SOL'}">
								<option value="jardim_morada_do_sol" selected>Jardim
									Morada do Sol</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_MORUMBI'}">
								<option value="jardim_morumbi">Jardim Morumbi</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_MORUMBI'}">
								<option value="jardim_morumbi" selected>Jardim Morumbi</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_NOVA_AMERICA'}">
								<option value="jardim_nova_america">Jardim Nova América</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_NOVA_AMERICA'}">
								<option value="jardim_nova_america" selected>Jardim
									Nova América</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_NOVA_EPOCA'}">
								<option value="jardim_nova_epoca">Jardim Nova Época</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_NOVA_EPOCA'}">
								<option value="jardim_nova_epoca" selected>Jardim Nova
									Época</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when
								test="${report.neighborhood != 'JARDIM_NOSSA_SENHORA_DO_CARMO'}">
								<option value="jardim_nossa_senhora_do_carmo">Jardim
									Nossa Senhora do Carmo</option>
							</c:when>
							<c:when
								test="${report.neighborhood == 'JARDIM_NOSSA_SENHORA_DO_CARMO'}">
								<option value="jardim_nossa_senhora_do_carmo" selected>Jardim
									Nossa Senhora do Carmo</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_PALMARES'}">
								<option value="jardim_palmares">Jardim Palmares</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_PALMARES'}">
								<option value="jardim_palmares" selected>Jardim
									Palmares</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_PALMEIRAS'}">
								<option value="jardim_palmeiras">Jardim das Palmeiras</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_PALMEIRAS'}">
								<option value="jardim_palmeiras" selected>Jardim das
									Palmeiras</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_PANORAMA'}">
								<option value="jardim_panorama">Jardim Panorama</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_PANORAMA'}">
								<option value="jardim_panorama" selected>Jardim
									Panorama</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_PARQUE_ANCHIETA'}">
								<option value="jardim_parque_anchieta">Jardim Parque
									Anchieta</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_PARQUE_ANCHIETA'}">
								<option value="jardim_parque_anchieta" selected>Jardim
									Parque Anchieta</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_PINHEIROS'}">
								<option value="jardim_pinheiros">Jardim Pinheiros</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_PINHEIROS'}">
								<option value="jardim_pinheiros" selected>Jardim
									Pinheiros</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_PRIMAVERA'}">
								<option value="jardim_primavera">Jardim Primavera</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_PRIMAVERA'}">
								<option value="jardim_primavera" selected>Jardim
									Primavera</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_QUITANDINHA'}">
								<option value="jardim_quitandinha">Jardim Quitandinha</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_QUITANDINHA'}">
								<option value="jardim_quitandinha" selected>Jardim
									Quitandinha</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when
								test="${report.neighborhood != 'JARDIM_RAFAELA_AMOROSO_MICELLI'}">
								<option value="jardim_rafaela_amoroso_micelli">Jardim
									Rafaela Amoroso Micelli</option>
							</c:when>
							<c:when
								test="${report.neighborhood == 'JARDIM_RAFAELA_AMOROSO_MICELLI'}">
								<option value="jardim_rafaela_amoroso_micelli" selected>Jardim
									Rafaela Amoroso Micelli</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_REGINA'}">
								<option value="jardim_regina">Jardim Regina</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_REGINA'}">
								<option value="jardim_regina" selected>Jardim Regina</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when
								test="${report.neighborhood != 'JARDIM_RESIDENCIAL_AGUA_BRANCA'}">
								<option value="jardim_residencial_agua_branca">Jardim
									Residencial Água Branca</option>
							</c:when>
							<c:when
								test="${report.neighborhood == 'JARDIM_RESIDENCIAL_AGUA_BRANCA'}">
								<option value="jardim_residencial_agua_branca" selected>Jardim
									Residencial Água Branca</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when
								test="${report.neighborhood != 'JARDIM_RESIDENCIAL_IEDA'}">
								<option value="jardim_residencial_ieda">Jardim
									Residencial Ieda</option>
							</c:when>
							<c:when
								test="${report.neighborhood == 'JARDIM_RESIDENCIAL_IEDA'}">
								<option value="jardim_residencial_ieda" selected>Jardim
									Residencial Ieda</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when
								test="${report.neighborhood != 'JARDIM_RESIDENCIAL_LUPO'}">
								<option value="jardim_residencial_lupo">Jardim
									Residencial Lupo</option>
							</c:when>
							<c:when
								test="${report.neighborhood == 'JARDIM_RESIDENCIAL_LUPO'}">
								<option value="jardim_residencial_lupo" selected>Jardim
									Residencial Lupo</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when
								test="${report.neighborhood != 'JARDIM_RESIDENCIAL_SANTA_MONICA'}">
								<option value="jardim_residencial_santa_monica">Jardim
									Residencial Santa Mônica</option>
							</c:when>
							<c:when
								test="${report.neighborhood == 'JARDIM_RESIDENCIAL_SANTA_MONICA'}">
								<option value="jardim_residencial_santa_monica" selected>Jardim
									Residencial Santa Mônica</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when
								test="${report.neighborhood != 'JARDIM_ROBERTO_SELMI_DEI'}">
								<option value="jardim_roberto_selmi_dei">Jardim Roberto
									Selmi Dei</option>
							</c:when>
							<c:when
								test="${report.neighborhood == 'JARDIM_ROBERTO_SELMI_DEI'}">
								<option value="jardim_roberto_selmi_dei" selected>Jardim
									Roberto Selmi Dei</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_SANTA_ADELIA'}">
								<option value="jardim_santa_adelia">Jardim Santa Adélia</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_SANTA_ADELIA'}">
								<option value="jardim_santa_adelia" selected>Jardim
									Santa Adélia</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_SANTA_ANGELINA'}">
								<option value="jardim_santa_angelina">Jardim Santa
									Angelina</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_SANTA_ANGELINA'}">
								<option value="jardim_santa_angelina" selected>Jardim
									Santa Angelina</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_SANTA_CLARA'}">
								<option value="jardim_santa_clara">Jardim Santa Clara</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_SANTA_CLARA'}">
								<option value="jardim_santa_clara" selected>Jardim
									Santa Clara</option>
							</c:when>
						</c:choose>
						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_SANTA_JULIA'}">
								<option value="jardim_santa_julia">Jardim Santa Júlia</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_SANTA_JULIA'}">
								<option value="jardim_santa_julia" selected>Jardim
									Santa Júlia</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_SANTA_LUCIA'}">
								<option value="jardim_santa_lucia">Jardim Santa Lúcia</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_SANTA_LUCIA'}">
								<option value="jardim_santa_lucia" selected>Jardim
									Santa Lúcia</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_SANTA_MARTA'}">
								<option value="jardim_santa_marta">Jardim Santa Marta</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_SANTA_MARTA'}">
								<option value="jardim_santa_marta" selected>Jardim
									Santa Marta</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when
								test="${report.neighborhood != 'JARDIM_SANTA_RITA_DE_CASSIA'}">
								<option value="jardim_santa_rita_de_cassia">Jardim
									Santa Rita de Cássia</option>
							</c:when>
							<c:when
								test="${report.neighborhood == 'JARDIM_SANTA_RITA_DE_CASSIA'}">
								<option value="jardim_santa_rita_de_cassia" selected>Jardim
									Santa Rita de Cássia</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_SANTO_ANTONIO'}">
								<option value="jardim_santo_antonio">Jardim Santo
									Antônio</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_SANTO_ANTONIO'}">
								<option value="jardim_santo_antonio" selected>Jardim
									Santo Antônio</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_SAO_RAFAEL'}">
								<option value="jardim_sao_rafael">Jardim São Rafael</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_SAO_RAFAEL'}">
								<option value="jardim_sao_rafael" selected>Jardim São
									Rafael</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_SILVANIA'}">
								<option value="jardim_silvania">Jardim Silvânia</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_SILVANIA'}">
								<option value="jardim_silvania" selected>Jardim
									Silvânia</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_SILVESTRE'}">
								<option value="jardim_silvestre">Jardim Silvestre</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_SILVESTRE'}">
								<option value="jardim_silvestre" selected>Jardim
									Silvestre</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_TAMOIO'}">
								<option value="jardim_tamoio">Jardim Tamoio</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_TAMOIO'}">
								<option value="jardim_tamoio" selected>Jardim Tamoio</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_TANGARA'}">
								<option value="jardim_tangara">Jardim Tangará</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_TANGARA'}">
								<option value="jardim_tangara" selected>Jardim Tangará</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_UNIVERSAL'}">
								<option value="jardim_universal">Jardim Universal</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_UNIVERSAL'}">
								<option value="jardim_universal" selected>Jardim
									Universal</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_VALE_DAS_ROSAS'}">
								<option value="jardim_vale_das_rosas">Jardim Vale das
									Rosas</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_VALE_DAS_ROSAS'}">
								<option value="jardim_vale_das_rosas" selected>Jardim
									Vale das Rosas</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_VENEZA'}">
								<option value="jardim_veneza">Jardim Veneza</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_VENEZA'}">
								<option value="jardim_veneza" selected>Jardim Veneza</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_VIADUTO'}">
								<option value="jardim_viaduto">Jardim Viaduto</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_VIADUTO'}">
								<option value="jardim_viaduto" selected>Jardim Viaduto</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'JARDIM_VITORIA'}">
								<option value="jardim_vitoria">Jardim Vitória</option>
							</c:when>
							<c:when test="${report.neighborhood == 'JARDIM_VITORIA'}">
								<option value="jardim_vitoria" selected>Jardim Vitória</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'PARQUE_CECAP'}">
								<option value="parque_cecap">Parque Cecap</option>
							</c:when>
							<c:when test="${report.neighborhood == 'PARQUE_CECAP'}">
								<option value="parque_cecap" selected>Parque Cecap</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'PARQUE_DAS_ARVORES'}">
								<option value="parque_das_arvores">Parque das Árvores</option>
							</c:when>
							<c:when test="${report.neighborhood == 'PARQUE_DAS_ARVORES'}">
								<option value="parque_das_arvores" selected>Parque das
									Árvores</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'PARQUE_GRAMADO'}">
								<option value="parque_gramado">Parque Gramado</option>
							</c:when>
							<c:when test="${report.neighborhood == 'PARQUE_GRAMADO'}">
								<option value="parque_gramado" selected>Parque Gramado</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'PARQUE_IGACABA'}">
								<option value="parque_igacaba">Parque Igaçaba</option>
							</c:when>
							<c:when test="${report.neighborhood == 'PARQUE_IGACABA'}">
								<option value="parque_igacaba" selected>Parque Igaçaba</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'PARQUE_IGUATEMI'}">
								<option value="parque_iguatemi">Parque Iguatemi</option>
							</c:when>
							<c:when test="${report.neighborhood == 'PARQUE_IGUATEMI'}">
								<option value="parque_iguatemi" selected>Parque
									Iguatemi</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'PARQUE_LARANJEIRAS'}">
								<option value="parque_laranjeiras">Parque Laranjeiras</option>
							</c:when>
							<c:when test="${report.neighborhood == 'PARQUE_LARANJEIRAS'}">
								<option value="parque_laranjeiras" selected>Parque
									Laranjeiras</option>
							</c:when>
						</c:choose>
						<c:choose>
							<c:when test="${report.neighborhood != 'PARQUE_PLANALTO'}">
								<option value="parque_planalto">Parque Planalto</option>
							</c:when>
							<c:when test="${report.neighborhood == 'PARQUE_PLANALTO'}">
								<option value="parque_planalto" selected>Parque
									Planalto</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when
								test="${report.neighborhood != 'PARQUE_RESIDENCIAL_JATOBA'}">
								<option value="parque_residencial_jatoba">Parque
									Residencial Jatobá</option>
							</c:when>
							<c:when
								test="${report.neighborhood == 'PARQUE_RESIDENCIAL_JATOBA'}">
								<option value="parque_residencial_jatoba" selected>Parque
									Residencial Jatobá</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when
								test="${report.neighborhood != 'PARQUE_RESIDENCIAL_LAURA_MOLINA'}">
								<option value="parque_residencial_laura_molina">Parque
									Residencial Laura Molina</option>
							</c:when>
							<c:when
								test="${report.neighborhood == 'PARQUE_RESIDENCIAL_LAURA_MOLINA'}">
								<option value="parque_residencial_laura_molina" selected>Parque
									Residencial Laura Molina</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when
								test="${report.neighborhood != 'PARQUE_RESIDENCIAL_SAO_PAULO'}">
								<option value="parque_residencial_sao_paulo">Parque
									Residencial São Paulo</option>
							</c:when>
							<c:when
								test="${report.neighborhood == 'PARQUE_RESIDENCIAL_SAO_PAULO'}">
								<option value="parque_residencial_sao_paulo" selected>Parque
									Residencial São Paulo</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'PARQUE_SAO_JOSE'}">
								<option value="parque_sao_jose">Parque São José</option>
							</c:when>
							<c:when test="${report.neighborhood == 'PARQUE_SAO_JOSE'}">
								<option value="parque_sao_jose" selected>Parque São
									José</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'PARQUE_VALE_DO_SOL'}">
								<option value="parque_vale_do_sol">Parque Vale do Sol</option>
							</c:when>
							<c:when test="${report.neighborhood == 'PARQUE_VALE_DO_SOL'}">
								<option value="parque_vale_do_sol" selected>Parque Vale
									do Sol</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'PARQUE_DOS_SABIAS'}">
								<option value="parque_dos_sabias">Parque dos Sabiás</option>
							</c:when>
							<c:when test="${report.neighborhood == 'PARQUE_DOS_SABIAS'}">
								<option value="parque_dos_sabias" selected>Parque dos
									Sabiás</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'RECANTO_DOS_NOBRES'}">
								<option value="recanto_dos_nobres">Recanto dos Nobres</option>
							</c:when>
							<c:when test="${report.neighborhood == 'RECANTO_DOS_NOBRES'}">
								<option value="recanto_dos_nobres" selected>Recanto dos
									Nobres</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when
								test="${report.neighborhood != 'RECREIO_CAMPESTRE_IDANORMA'}">
								<option value="recreio_campestre_idanorma">Recreio
									Campestre Idanorma</option>
							</c:when>
							<c:when
								test="${report.neighborhood == 'RECREIO_CAMPESTRE_IDANORMA'}">
								<option value="recreio_campestre_idanorma" selected>Recreio
									Campestre Idanorma</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'RESIDENCIAL_ACAPULCO'}">
								<option value="residencial_acapulco">Residencial
									Acapulco</option>
							</c:when>
							<c:when test="${report.neighborhood == 'RESIDENCIAL_ACAPULCO'}">
								<option value="residencial_acapulco" selected>Residencial
									Acapulco</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'RESIDENCIAL_ALAMEDAS'}">
								<option value="residencial_alamedas">Residencial
									Alamedas</option>
							</c:when>
							<c:when test="${report.neighborhood == 'RESIDENCIAL_ALAMEDAS'}">
								<option value="residencial_alamedas" selected>Residencial
									Alamedas</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'RESIDENCIAL_PARAISO'}">
								<option value="residencial_paraiso">Residencial Paraíso</option>
							</c:when>
							<c:when test="${report.neighborhood == 'RESIDENCIAL_PARAISO'}">
								<option value="residencial_paraiso" selected>Residencial
									Paraíso</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'SANTA_LUZIA'}">
								<option value="santa_luzia">Santa Luzia</option>
							</c:when>
							<c:when test="${report.neighborhood == 'SANTA_LUZIA'}">
								<option value="santa_luzia" selected>Santa Luzia</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'SANTANA'}">
								<option value="santana">Santana</option>
							</c:when>
							<c:when test="${report.neighborhood == 'SANTANA'}">
								<option value="santana" selected>Santana</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'SAO_GERALDO'}">
								<option value="sao_geraldo">São Geraldo</option>
							</c:when>
							<c:when test="${report.neighborhood == 'SAO_GERALDO'}">
								<option value="sao_geraldo" selected>São Geraldo</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'VALLE_VERDE'}">
								<option value="valle_verde">Valle Verde</option>
							</c:when>
							<c:when test="${report.neighborhood == 'VALLE_VERDE'}">
								<option value="valle_verde" selected>Valle Verde</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'VICTORIO_DE_SANTI'}">
								<option value="victorio_de_santi">Victório de Santi</option>
							</c:when>
							<c:when test="${report.neighborhood == 'VICTORIO_DE_SANTI'}">
								<option value="victorio_de_santi" selected>Victório de
									Santi</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'VILA_BELA_VISTA'}">
								<option value="vila_bela_vista">Vila Bela Vista</option>
							</c:when>
							<c:when test="${report.neighborhood == 'VILA_BELA_VISTA'}">
								<option value="vila_bela_vista" selected>Vila Bela
									Vista</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'VILA_BIAGIONI'}">
								<option value="vila_biagioni">Vila Biagioni</option>
							</c:when>
							<c:when test="${report.neighborhood == 'VILA_BIAGIONI'}">
								<option value="vila_biagioni" selected>Vila Biagioni</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'VILA_CIDADE_INDUSTRIAL'}">
								<option value="vila_cidade_industrial">Vila Cidade
									Industrial</option>
							</c:when>
							<c:when test="${report.neighborhood == 'VILA_CIDADE_INDUSTRIAL'}">
								<option value="vila_cidade_industrial" selected>Vila
									Cidade Industrial</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'VILA_ESPERANCA'}">
								<option value="vila_esperanca">Vila Esperança</option>
							</c:when>
							<c:when test="${report.neighborhood == 'VILA_ESPERANCA'}">
								<option value="vila_esperanca" selected>Vila Esperança</option>
							</c:when>
						</c:choose>
						<c:choose>
							<c:when test="${report.neighborhood != 'VILA_FERROVIARIA'}">
								<option value="vila_ferroviaria">Vila Ferroviária</option>
							</c:when>
							<c:when test="${report.neighborhood == 'VILA_FERROVIARIA'}">
								<option value="vila_ferroviaria" selected>Vila
									Ferroviária</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'VILA_FREITAS'}">
								<option value="vila_freitas">Vila Freitas</option>
							</c:when>
							<c:when test="${report.neighborhood == 'VILA_FREITAS'}">
								<option value="vila_freitas" selected>Vila Freitas</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'VILA_FURLAN'}">
								<option value="vila_furlan">Vila Furlan</option>
							</c:when>
							<c:when test="${report.neighborhood == 'VILA_FURLAN'}">
								<option value="vila_furlan" selected>Vila Furlan</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'VILA_GASPAR'}">
								<option value="vila_gaspar">Vila Gaspar</option>
							</c:when>
							<c:when test="${report.neighborhood == 'VILA_GASPAR'}">
								<option value="vila_gaspar" selected>Vila Gaspar</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'VILA_GIRASSOL'}">
								<option value="vila_girassol">Vila Girassol</option>
							</c:when>
							<c:when test="${report.neighborhood == 'VILA_GIRASSOL'}">
								<option value="vila_girassol" selected>Vila Girassol</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'VILA_GUAIANASES'}">
								<option value="vila_guaienses">Vila Guaianases</option>
							</c:when>
							<c:when test="${report.neighborhood == 'VILA_GUAIANASES'}">
								<option value="vila_guaienses" selected>Vila Guaianases</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'VILA_HARMONIA'}">
								<option value="vila_harmonia">Vila Harmonia</option>
							</c:when>
							<c:when test="${report.neighborhood == 'VILA_HARMONIA'}">
								<option value="vila_harmonia" selected>Vila Harmonia</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'VILA_INDEPENDENCIA'}">
								<option value="vila_independencia">Vila Independência</option>
							</c:when>
							<c:when test="${report.neighborhood == 'VILA_INDEPENDENCIA'}">
								<option value="vila_independencia" selected>Vila
									Independência</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'VILA_JOINVILLE'}">
								<option value="vila_joinville">Vila Joinville</option>
							</c:when>
							<c:when test="${report.neighborhood == 'VILA_JOINVILLE'}">
								<option value="vila_joinville" selected>Vila Joinville</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'VILA_MELHADO'}">
								<option value="vila_melhado">Vila Melhado</option>
							</c:when>
							<c:when test="${report.neighborhood == 'VILA_MELHADO'}">
								<option value="vila_melhado" selected>Vila Melhado</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when
								test="${report.neighborhood != 'VILA_NOSSA_SENHORA_APARECIDA'}">
								<option value="vila_nossa_senhora_aparecida">Vila Nossa
									Senhora Aparecida</option>
							</c:when>
							<c:when
								test="${report.neighborhood == 'VILA_NOSSA_SENHORA_APARECIDA'}">
								<option value="vila_nossa_senhora_aparecida" selected>Vila
									Nossa Senhora Aparecida</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'VILA_ORIENTE'}">
								<option value="vila_oriente">Vila Oriente</option>
							</c:when>
							<c:when test="${report.neighborhood == 'VILA_ORIENTE'}">
								<option value="vila_oriente" selected>Vila Oriente</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'VILA_RENATA'}">
								<option value="vila_renata">Vila Renata</option>
							</c:when>
							<c:when test="${report.neighborhood == 'VILA_RENATA'}">
								<option value="vila_renata" selected>Vila Renata</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'VILA_SANTA_MARIA'}">
								<option value="vila_santa_maria">Vila Santa Maria</option>
							</c:when>
							<c:when test="${report.neighborhood == 'VILA_SANTA_MARIA'}">
								<option value="vila_santa_maria" selected>Vila Santa
									Maria</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'VILA_SANTO_MALARA'}">
								<option value="vila_santo_malara">Vila Santo Malara</option>
							</c:when>
							<c:when test="${report.neighborhood == 'VILA_SANTO_MALARA'}">
								<option value="vila_santo_malara" selected>Vila Santo
									Malara</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'VILA_SEDENHO'}">
								<option value="vila_sedenho">Vila Sedenho</option>
							</c:when>
							<c:when test="${report.neighborhood == 'VILA_SEDENHO'}">
								<option value="vila_sedenho" selected>Vila Sedenho</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'VILA_SERVIDOR'}">
								<option value="vila_servidor">Vila do Servidor</option>
							</c:when>
							<c:when test="${report.neighborhood == 'VILA_SERVIDOR'}">
								<option value="vila_servidor" selected>Vila do Servidor</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'VILA_SUCONASA'}">
								<option value="vila_suconasa">Vila Suconasa</option>
							</c:when>
							<c:when test="${report.neighborhood == 'VILA_SUCONASA'}">
								<option value="vila_suconasa" selected>Vila Suconasa</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'VILA_VELOSA'}">
								<option value="vila_velosa">Vila Velosa</option>
							</c:when>
							<c:when test="${report.neighborhood == 'VILA_VELOSA'}">
								<option value="vila_velosa" selected>Vila Velosa</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'VILA_VIEIRA'}">
								<option value="vila_vieira">Vila Vieira</option>
							</c:when>
							<c:when test="${report.neighborhood == 'VILA_VIEIRA'}">
								<option value="vila_vieira" selected>Vila Vieira</option>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${report.neighborhood != 'VILA_XAVIER'}">
								<option value="vila_xavier">Vila Xavier</option>
							</c:when>
							<c:when test="${report.neighborhood == 'VILA_XAVIER'}">
								<option value="vila_xavier" selected>Vila Xavier</option>
							</c:when>
						</c:choose>

					</select>
				</div>

				<div class="form-group mb-3">
					<label for="address">Endereço Completo*</label> <input type="text"
						class="form-control" name="address" id="address"
						value="${report.address}" required>
				</div>

				<div class="mb-3">
					<label for="incidentTime" class="form-label">Hora do
						Ocorrido*</label> <input type="time" name="time" id="time"
						class="form-control" required value="${report.time}">
				</div>

				<div class="mb-3">
					<label for="description" class="form-label">Descrição do
						Incidente*</label>
					<textarea name="description" id="description" class="form-control"
						rows="4" required>${report.description}</textarea>
				</div>

				<div class="mb-3">
					<label for="image" class="form-label">Imagem do Ocorrido
						(opcional)</label> <input type="file" name="image" id="image"
						class="form-control" accept="image/*">
				</div>

				<div class="mb-3 text-center">
					<button type="submit" class="btn btn-primary">Enviar
						Relato</button>
				</div>
			</form>
		</div>
	</div>

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>