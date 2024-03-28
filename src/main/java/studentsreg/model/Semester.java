package studentsreg.model;

import java.util.UUID;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Semester {
    @Id
    @Column(name = "semesterId", columnDefinition = "BINARY(16)")
    protected UUID semesterId;

    @Column(name = "semesterName")
    protected String semesterName;

    @Column(name = "startDate")
    protected String startDate;

    @Column(name = "endDate")
    protected String endDate;

    public Semester() {
        // Default constructor
        this.semesterId = UUID.randomUUID(); // Generate UUID
    }

    public Semester(String semesterName, String startDate, String endDate) {
        this.semesterId = UUID.randomUUID(); // Generate UUID
        this.semesterName = semesterName;
        this.startDate = startDate;
        this.endDate = endDate;
    }

    public Semester(UUID semesterId, String semesterName, String startDate, String endDate) {
        this.semesterId = semesterId;
        this.semesterName = semesterName;
        this.startDate = startDate;
        this.endDate = endDate;
    }

    public UUID getSemesterId() {
        return semesterId;
    }

    public void setSemesterId(UUID semesterId) {
        this.semesterId = semesterId;
    }

    public String getSemesterName() {
        return semesterName;
    }

    public void setSemesterName(String semesterName) {
        this.semesterName = semesterName;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }
}
