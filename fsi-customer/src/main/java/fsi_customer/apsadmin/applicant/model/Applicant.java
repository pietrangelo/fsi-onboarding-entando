/*
 *
 * <Your licensing text here>
 *
 */
package fsi_customer.apsadmin.applicant.model;



public class Applicant {

	public int getId() {
		return _id;
	}
	public void setId(int id) {
		this._id = id;
	}

	public String getFirstname() {
		return _firstname;
	}
	public void setFirstname(String firstname) {
		this._firstname = firstname;
	}

	public String getLastname() {
		return _lastname;
	}
	public void setLastname(String lastname) {
		this._lastname = lastname;
	}

	public String getCompany() {
		return _company;
	}
	public void setCompany(String company) {
		this._company = company;
	}

	public String getEmail() {
		return _email;
	}
	public void setEmail(String email) {
		this._email = email;
	}

	public String getPwd() {
		return _pwd;
	}
	public void setPwd(String pwd) {
		this._pwd = pwd;
	}


	private int _id;
	private String _firstname;
	private String _lastname;
	private String _company;
	private String _email;
	private String _pwd;

}
