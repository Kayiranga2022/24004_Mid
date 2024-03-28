package studentsreg.model;


import java.util.UUID;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class CourseDefinition {

    @Id
    @Column(name = "course_definition_id", columnDefinition = "BINARY(16)")
    private UUID courseDefinitionId;

    @Column(name = "course_definition_code")
    private String courseDefinitionCode;

    @Column(name = "course_definition_description")
    private String courseDefinitionDescription;

    @OneToOne
    @JoinColumn(name = "course_id")
    private Course course; // One-to-One relationship with Course

    public CourseDefinition() {
        this.courseDefinitionId = UUID.randomUUID();
    }

    public CourseDefinition(String courseDefinitionCode, String courseDefinitionDescription, Course course) {
        this.courseDefinitionId = UUID.randomUUID();
        this.courseDefinitionCode = courseDefinitionCode;
        this.courseDefinitionDescription = courseDefinitionDescription;
        this.course = course;
    }

    // Getters and Setters (omitted for brevity)

    public UUID getCourseDefinitionId() {
        return courseDefinitionId;
    }

    public void setCourseDefinitionId(UUID courseDefinitionId) {
        this.courseDefinitionId = courseDefinitionId;
    }

    public String getCourseDefinitionCode() {
        return courseDefinitionCode;
    }

    public void setCourseDefinitionCode(String courseDefinitionCode) {
        this.courseDefinitionCode = courseDefinitionCode;
    }

    public String getCourseDefinitionDescription() {
        return courseDefinitionDescription;
    }

    public void setCourseDefinitionDescription(String courseDefinitionDescription) {
        this.courseDefinitionDescription = courseDefinitionDescription;
    }

    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }
}