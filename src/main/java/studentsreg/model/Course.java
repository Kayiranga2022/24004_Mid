package studentsreg.model;

import java.util.UUID;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Course {
    @Id
    @Column(name = "courseId", columnDefinition = "BINARY(16)")
    protected UUID courseId;

    @Column(name = "courseCode")
    protected String courseCode;

    @Column(name = "courseName")
    protected String courseName;

    @ManyToOne
    @JoinColumn(name = "semesterId")
    protected Semester semesterId; // Change to Semester object instead of String

    public Course() {
        this.courseId = UUID.randomUUID(); // Generate UUID
    }

    public Course(String courseCode, String courseName, Semester semester) {
        this.courseId = UUID.randomUUID(); // Generate UUID
        this.courseCode = courseCode;
        this.courseName = courseName;
        this.semesterId = semester;
    }

    public Course(UUID courseId, String courseCode, String courseName, Semester semester) {
        this.courseId = courseId;
        this.courseCode = courseCode;
        this.courseName = courseName;
        this.semesterId = semester;
    }

    public UUID getCourseId() {
        return courseId;
    }

    public void setCourseId(UUID courseId) {
        this.courseId = courseId;
    }

    public String getCourseCode() {
        return courseCode;
    }

    public void setCourseCode(String courseCode) {
        this.courseCode = courseCode;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public Semester getSemesterId() {
        return semesterId;
    }

    public void setSemesterId(Semester semester) {
        this.semesterId = semester;
    }
}
