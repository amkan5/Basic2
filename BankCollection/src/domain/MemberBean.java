package domain;
public class MemberBean {
	protected String uid,pass,name,ssn,addr,phone,email,profile,access_Num,credit_Rating,regidate;

	public String getProfile() {
		return profile;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public String getAccess_Num() {
		return access_Num;
	}

	public void setAccess_Num(String access_Num) {
		this.access_Num = access_Num;
	}

	public String getCredit_Rating() {
		return credit_Rating;
	}

	public void setCredit_Rating(String credit_Rating) {
		this.credit_Rating = credit_Rating;
	}

	public String getRegidate() {
		return regidate;
	}

	public void setRegidate(String regidate) {
		this.regidate = regidate;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSsn() {
		return ssn;
	}

	public void setSsn(String ssn) {
		this.ssn = ssn;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Override
	public String toString() {
		return "회원정보 [아이디:" + uid + ", "
				+ "비번:" + pass + ", 이름:" + name + 
				", 주민번호:" + ssn + ", 주소:" + addr
				+ ", 전화번호:" + phone + "]\n";
	}
	

}
