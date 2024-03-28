package studentsreg.model;

import javax.persistence.*;
import java.util.Date;
import java.util.UUID;

@Entity
@Table(name = "student_registration")
public class StudentRegistration {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "registration_id", columnDefinition = "uuid")
    private UUID registrationId;

    @Column(name = "registration_code")
    private String registrationCode;

    @Column(name = "registration_date")
    private Date registrationDate;

    @ManyToOne
    @JoinColumn(name = "student_id")
    private Student student;

    @ManyToOne
    @JoinColumn(name = "semester_id")
    private Semester semester;

    @Column(name = "Department_id")
    private String departmentid;

    // Constructors, Getters, and Setters

    public StudentRegistration() {
    }

	public StudentRegistration(UUID registrationId, String registrationCode, Date registrationDate, Student student,
			Semester semester, String departmentid) {
		super();
		this.registrationId = registrationId;
		this.registrationCode = registrationCode;
		this.registrationDate = registrationDate;
		this.student = student;
		this.semester = semester;
		this.departmentid = departmentid;
	}

	public UUID getRegistrationId() {
		return registrationId;
	}

	public void setRegistrationId(UUID registrationId) {
		this.registrationId = registrationId;
	}

	public String getRegistrationCode() {
		return registrationCode;
	}

	public void setRegistrationCode(String registrationCode) {
		this.registrationCode = registrationCode;
	}

	public Date getRegistrationDate() {
		return registrationDate;
	}

	public void setRegistrationDate(Date registrationDate) {
		this.registrationDate = registrationDate;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public Semester getSemester() {
		return semester;
	}

	public void setSemester(Semester semester) {
		this.semester = semester;
	}

	public String getDepartmentid() {
		return departmentid;
	}

	public void setDepartmentid(String departmentid) {
		this.departmentid = departmentid;
	}
}

    