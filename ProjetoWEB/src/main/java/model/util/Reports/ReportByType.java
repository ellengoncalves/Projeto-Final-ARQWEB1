package model.util.Reports;

public class ReportByType {

	private String type;
	private Integer count;

	public ReportByType(String type, Integer count) {
		this.type = type;
		this.count = count;
	}
	
	public ReportByType() {
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}
	
}
