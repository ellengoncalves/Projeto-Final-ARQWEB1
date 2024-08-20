package model;

public enum Area {
	
	ALTOS_DO_JARAGUA("Altos do Jaraguá"),
	ALTOS_DE_PINHEIROS("Altos de Pinheiros"),
	CAMPOS_VILLE("Campos Ville"),
	CENTRO("Centro"),
	CHACARA_FLORA("Chácara Flora"),
	CHACARA_VELOSA("Chácara Velosa"),
	CIDADE_JARDIM("Cidade Jardim"),
	FONTE_LUMINOSA("Fonte Luminosa"),
	ACLIMACAO("Aclimação"),
	ADALBERTO_ROXO("Adalberto Roxo"),
	ADALGISA("Adalgisa"),
	AGUAS_DO_PAIOL("Águas do Paiol"),
	ALMEIDA("Almeida"),
	ALTOS_DO_CECAP("Altos do Cecap"),
	AMERICA("América"),
	ANA_ADELAIDE("Ana Adelaide"),
	ARANGA("Arangá"),
	ARCO_IRIS("Arco-íris"),
	ARTICO("Ártico"),
	BIAGIONI("Biagioni"),
	BOTANICO("Botânico"),
	BRASIL("Brasil"),
	BRASILIA("Brasília"),
	CRISTO_REI("Cristo Rei"),
	CRUZEIRO_DO_SUL("Cruzeiro do Sul"),
	JARDIM_DAS_ESTACOES("Jardim das Estações"),
	JARDIM_DAS_FLORES("Jardim das Flores"),
	JARDIM_DAS_PAINEIRAS ("Jardim das Paineiras"),
	DEL_REI("Del Rei"),
	JARDIM_DO_BOSQUE("Jardim do Bosque"),
	JARDIM_DO_CARMO("Jardim do Carmo"),
	DOM_PEDRO("Dom Pedro"),
	DOMINGOS_SAVIO("Domingos Sávio"),
	JARDIM_DOS_MANACAS("Jardim dos Manacás"),
	DUMONT("Dumont"),
	JARDIM_ELlANA("Jardim Eliana"),
	JARDIM_ESPLANADA("Jardim Esplanada"),
	JARDIM_EUROPA("Jardim Europa"),
	JARDIM_FLORIDIANA("Jardim Floridiana"),
	JARDIM_GARDENIAS("Jardim Gardenias"),
	HIGIENOPOLIS("Higienópolis"),
	IMPERADOR("Imperador"),
	IMPERIAL("Imperial"),
	INDAIA("Indaia"),
	MANGIACAPRA("Mangiacapra"),
	MARACANA("Maracanã"),
	MARIA_LUIZA("Maria Luiza"),
	MARTINEZ("Martinez"),
	MORADA_DO_SOL("Morada do Sol"),
	MORUMBI("Morumbi"),
	NOVA_AMERICA("Nova América"),
	NOVA_ARARAQUARA("Nova Araraquara"),
	NOVA_EPOCA("Nova Época"),
	PADRE_ANCHIETA("Padre Anchieta"),
	PALMARES("Palmares"),
	PAULISTANO("Paulistano"),
	PINHEIROS("Pinheiros"),
	PORTUGAL("Portugal"),
	PRIMOR("Primor"),
	QUITANDINHA("Quitandinha"),
	RAFAELA_AMOROSO_MICELLI("Rafaela Amoroso Micelli"),
	REGINA("Regina"),
	IEDA("Ieda"),
	ITALIA("Italia"),
	PARAISO("Paraíso"),
	SANTA_MONICA("Santa Monica"),
	SILVESTRE("Silvestre"),
	SANTA_ANGELINA("Santa Angelina"),
	SANTA_CLARA("Santa Clara"),
	SANTA_JULIA("Santa Julia"),
	SANTA_MARTA("Santa Marta"),
	SANTA_THEREZA("Santa Thereza"),
	SANTO_ANTONIO("Santo Antonio"),
	SAO_RAFAEL("São Rafael"),
	SERRA_AZUL("Serra Azul"),
	SILVANIA("Silvânia"),
	TABAPUA("Tabapua"),
	TAMOIO("Tamoio"),
	TANGARA("Tangará"),
	TINEN("Tinen"),
	UIRAPURU("Uirapuru"),
	UNIVERSAL("Universal"),
	VENEZA("Veneza"),
	ZAVANELLA("Zavanella"),
	ALVORADA("Alvorada"),
	HORTENCIAS("Hortências"),
	LARANJEIRAS("Laranjeiras"),
	GRAMADO("Gramado"),
	IGACABA("Igaçaba"),
	PLANALTO("Planalto"),
	IGUATEMI("Iguatemi"),
	PARQUE_DO_VALLE("Parque do Valle"),
	LAURA_MOLINA("Laura Molina"),
	VALE_DO_SOL("Vale do Sol"),
	PARQUE_SAO_PAULO("Parque São Paulo"),
	ACAPULCO("Acapulco"),
	CAMBUY("Cambuy"),
	LUPO("Lupo"),
	SAO_GERALDO("São Geraldo"),
	SELMI_DEI("Selmi dei"),
	VICTORIO_DE_SANTI("Victório de Santi"),
	VILA_BIAGIONI("Vila Biagioni"),
	VILA_CIDADE_INDUSTRIAL("Vila Cidade Industrial"),
	VILA_DE_ARACOARA ("Vila de Aracoara"),
	VILA_DER("Vila DER"),
	VILA_DO_SERVIDOR("Vila do Servidor"),
	VILA_DONOFRE("Vila Donofre"),
	VILA_ESPERANCA("Vila Esperança"),
	VILA_FERROVIARIA("Vila Ferroviária"),
	VILA_FURLAN("Vila Furlan"),
	VILA_GASPAR("Vila Gaspar"),
	VILA_GUAIANAZES("Vila Guaianazes"),
	VILA_HARMONIA("Vila Harmonia"),
	VILA_HIGIA("Vila Higia"),
	VILA_MELHADO("Vila Melhado"),
	VILA_PROGRESSO("Vila Progresso"),
	VILA_SANTANA("Vila Santana"),
	VILA_SEDENHO("Vila Sedenho"),
	VILA_STANDARD("Vila Standard"),
	VILA_SUCONASA("Vila Suconasa"),
	VILA_VIEIRA("Vila Vieira"),
	VILA_XAVIER("Vila Xavier"),
	VILA_YAMADA("Vila Yamada"),
	YOLANDA_OPICE("Yolanda Ópice");
	
	private String description;
	
	private Area(String description) {
		this.description = description;
	}
	
	public String getDescription() {
		return description;
	}
}
