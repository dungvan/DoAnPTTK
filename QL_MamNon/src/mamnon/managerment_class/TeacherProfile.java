package mamnon.managerment_class;

public class TeacherProfile extends UserProfile{
private String level;
private String nationalID;
private String religion;
private String nationality;
/**
 * @return the level
 */
public String getLevel() {
	return level;
}

/**
 * @param level the level to set
 */
public void setLevel(String level) {
	this.level = level;
}

/**
 * @return the nationalID
 */
public String getNationalID() {
	return nationalID;
}

/**
 * @param nationalID the nationalID to set
 */
public void setNationalID(String nationalID) {
	this.nationalID = nationalID;
}

/**
 * @return the religion
 */
public String getReligion() {
	return religion;
}

/**
 * @param religion the religion to set
 */
public void setReligion(String religion) {
	this.religion = religion;
}

/**
 * @return the nationality
 */
public String getNationality() {
	return nationality;
}

/**
 * @param nationality the nationality to set
 */
public void setNationality(String nationality) {
	this.nationality = nationality;
}
}
