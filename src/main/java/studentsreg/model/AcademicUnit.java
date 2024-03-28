package studentsreg.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import java.util.UUID;

@Entity
@Table(name="academic_unit")
public class AcademicUnit {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name="academic_unit_id", columnDefinition = "BINARY(16)")
    private UUID academicUnitId;
    
    @Column(name="academic_unit_code")
    private String academicUnitCode;


    @Column(name="academic_unit_name")
    private String academicUnitName;

    @Column(name="academic_unit_type")
    private EAcademicUnit academicUnitType;

    @ManyToOne
    @JoinColumn(name = "parent_id")
    private AcademicUnit parentId;

    public AcademicUnit() {
        super();
    }

    public UUID getAcademicUnitId() {
        return academicUnitId;
    }

    public void setAcademicUnitId(UUID academicUnitId) {
        this.academicUnitId = academicUnitId;
    }
    
    

    public String getAcademicUnitCode() {
		return academicUnitCode;
	}

	public void setAcademicUnitCode(String academicUnitCode) {
		this.academicUnitCode = academicUnitCode;
	}

	public String getAcademicUnitName() {
        return academicUnitName;
    }

    public void setAcademicUnitName(String academicUnitName) {
        this.academicUnitName = academicUnitName;
    }

    public EAcademicUnit getAcademicUnitType() {
        return academicUnitType;
    }

    public void setAcademicUnitType(EAcademicUnit academicUnitType) {
        this.academicUnitType = academicUnitType;
    }

    public AcademicUnit getParentId() {
        return parentId;
    }

    public void setParentId(AcademicUnit parentId) {
        this.parentId = parentId;
    }
}
