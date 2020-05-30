package net.javaguides.usermanagement.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="instructor")
public class User {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	protected int id;
	
	@Column(name="studentname")
	protected String studentname;
	
	@Column(name="projectname")
	protected String projectname;
	
	@Column(name="projectdescription")
	protected String projectdescription;
	
	public User() {
	}
	
	public User(String studentname, String projectname, String projectdescription) {
		super();
		this.studentname = studentname;
		this.projectname = projectname;
		this.projectdescription = projectdescription;
	}

	public User(int id, String studentname, String projectname, String projectdescription) {
		super();
		this.id = id;
		this.studentname = studentname;
		this.projectname = projectname;
		this.projectdescription = projectdescription;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getStudentname() {
		return studentname;
	}
	public void setStudentname(String studentname) {
		this.studentname = studentname;
	}
	public String getProjectname() {
		return projectname;
	}
	public void setProjectname(String projectname) {
		this.projectname = projectname;
	}
	public String getProjectdescription() {
		return projectdescription;
	}
	public void setProjectdescription(String projectdescription) {
		this.projectdescription = projectdescription;
	}
}
