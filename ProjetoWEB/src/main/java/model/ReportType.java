package model;

public enum ReportType {
	
	INUNDACAO("Inundação"),
	ENCHENTE("Enchente"),
	ALAGAMENTO("Alagamento"),
	DESMORONAMENTO("Desmoronamento"),
	QUEDA_ARVORE("Queda de árvore"),
	OUTRO("Outro");
	
	private String description;
	
	ReportType(String description){
		this.description = description;
	}
	
	public String getDescription() {
		return description;
	}
}