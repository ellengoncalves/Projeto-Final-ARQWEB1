package model;

public enum ReportType {

	ALAGAMENTO("Alagamento"),
	DESMORONAMENTO("Desmoronamento"),
	QUEDA_ARVORE("Queda de Árvore"),
	FURACAO("Furacão"),
	INCENDIO("Incêndio"),
	ACIDENTE_TRANSITO("Acidente de trânsito"),
	INFRAESTRUTURA("Infraestrutura"),
	VANDALISMO("Vandalismo"),
	POLUICAO("Poluição"),
	MAUS_TRATOS_ANIMAIS("Maus tratos à animais"),
	EMERGENCIAS_MEDICAS("Emergências Médicas"),
	OUTRO("Outro");
	
	private String description;
		
	ReportType(String description) {
		this.description = description;
	}
		
	public String getDescription() {
		return description;
	}
	
}
