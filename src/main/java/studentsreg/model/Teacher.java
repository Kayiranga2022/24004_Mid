package studentsreg.model;

import java.util.UUID;
import javax.persistence.*;

@Entity
public class Teacher {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "teacher_id", columnDefinition = "BINARY(16)")
    private UUID teacherId;

    @Column(name = "first_name")
    private String firstName;

    @Column(name = "last_name")
    private String lastName;

    @Enumerated(EnumType.STRING)
    private Qualification qualification;

    @ManyToOne
    @JoinColumn(name = "course_id")
    private Course course;

    // Constructors, getters, and setters
    public Teacher() {
    }

    public Teacher(String firstName, String lastName, Course course) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.course = course;
    }

    public UUID getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(UUID teacherId) {
        this.teacherId = teacherId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public Qualification getQualification() {
        return qualification;
    }

    public void setQualification(Qualification qualification) {
        this.qualification = qualification;
    }

    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }
}
