package pd.java.other;

import java.sql.ResultSet;
import java.sql.SQLException;

import pd.java.dao.ProfileDao;

public class Profile {
	private String name;
	private String otherName;
	private String dob;
	private String gender;
	private String nationality;
	private String fatherName;
	private String motherName;
	private String huswif;
	private String profession;
	private String presentWork;
	private String pastWork;
	private String education;
	private String address;
	private String phno;
	private String email;
	private String facebookUrl;
	private String instagramUrl;
	private String twiterUrl;
	
	public Profile loadData(String id) {
		ProfileDao pdao = new ProfileDao();
		ResultSet rs = pdao.retrieveData(id);
		try {
			while(rs.next()) {
				this.setAddress(rs.getString("address"));
				this.setDob(rs.getString("dob"));
				this.setEducation(rs.getString("education"));
				this.setEmail(rs.getString("email"));
				this.setFacebookUrl(rs.getString("facebook"));
				this.setFatherName(rs.getString("fatherName"));
				this.setGender(rs.getString("gender"));
				this.setHuswif(rs.getString("husWif"));
				this.setInstagramUrl(rs.getString("instagram"));
				this.setMotherName(rs.getString("motherName"));
				this.setName(rs.getString("name"));
				this.setNationality(rs.getString("nationality"));
				this.setOtherName(rs.getString("otherName"));
				this.setPastWork(rs.getString("pastWork"));
				this.setPhno(rs.getString("phno"));
				this.setPresentWork(rs.getString("presentWork"));
				this.setProfession(rs.getString("profession"));
				this.setTwiterUrl(rs.getString("twiter"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return this;
	}
	
	//getters and setters
	
	public String getName() {
		return name;
	}
	
	public String getOtherName() {
		return otherName;
	}

	public String getDob() {
		return dob;
	}

	public String getGender() {
		return gender;
	}

	public String getNationality() {
		return nationality;
	}

	public String getFatherName() {
		return fatherName;
	}

	public String getMotherName() {
		return motherName;
	}

	public String getHuswif() {
		return huswif;
	}

	public String getProfession() {
		return profession;
	}

	public String getPresentWork() {
		return presentWork;
	}

	public String getPastWork() {
		return pastWork;
	}
	
	public String getEducation() {
		return education;
	}

	public String getAddress() {
		return address;
	}

	public String getPhno() {
		return phno;
	}

	public String getEmail() {
		return email;
	}

	public String getFacebookUrl() {
		return facebookUrl;
	}

	public String getInstagramUrl() {
		return instagramUrl;
	}

	public String getTwiterUrl() {
		return twiterUrl;
	}
	
	public void setName(String name) {
		this.name = name;
	}

	public void setOtherName(String otherName) {
		this.otherName = otherName;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}

	public void setMotherName(String motherName) {
		this.motherName = motherName;
	}

	public void setHuswif(String huswif) {
		this.huswif = huswif;
	}

	public void setProfession(String profession) {
		this.profession = profession;
	}

	public void setPresentWork(String presentWork) {
		this.presentWork = presentWork;
	}

	public void setPastWork(String pastWork) {
		this.pastWork = pastWork;
	}
	
	public void setEducation(String education) {
		this.education = education;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public void setPhno(String phno) {
		this.phno = phno;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setFacebookUrl(String facebookUrl) {
		this.facebookUrl = facebookUrl;
	}

	public void setInstagramUrl(String instagramUrl) {
		this.instagramUrl = instagramUrl;
	}

	public void setTwiterUrl(String twiterUrl) {
		this.twiterUrl = twiterUrl;
	}
	
}
