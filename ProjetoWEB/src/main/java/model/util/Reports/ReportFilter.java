package model.util.Reports;

import java.time.LocalTime;

import model.ReportType;
import model.User;

public class ReportFilter {
	
	private User user;
	
	private ReportType type;
	
	private LocalTime time;

	public ReportType getType() {
		return type;
	}

	public void setType(ReportType type) {
		this.type = type;
	}

	public LocalTime getTime() {
		return time;
	}

	public void setInitialTime(LocalTime time) {
		this.time = time;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
}