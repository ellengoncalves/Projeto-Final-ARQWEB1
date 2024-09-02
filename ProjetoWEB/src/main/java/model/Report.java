package model;

import java.io.Serializable;
import java.time.LocalTime;
import java.util.Objects;

public class Report implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private Long id;
	private ReportType type;
	private Neighborhood neighboorhood;
	private LocalTime time;
	private String address;
	private String description;
	private User user;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	
	public ReportType getType() {
		return type;
	}
	public void setType(ReportType type) {
		this.type = type;
	}
	public LocalTime getTime() {
		return time;
	}
	public void setTime(LocalTime time) {
		this.time = time;
	}
	
	public Neighborhood getNeighboorhood() {
		return neighboorhood;
	}
	public void setNeighboorhood(Neighborhood neighboorhood) {
		this.neighboorhood = neighboorhood;
	}
	
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		
		Report other = (Report) obj;
		return Objects.equals(id, other.id);
	}
}