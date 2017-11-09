/*
 *
 * <Your licensing text here>
 *
 */
package fsi_customer.apsadmin.applicant;



import com.agiletec.apsadmin.system.ApsAdminSystemConstants;
import com.agiletec.apsadmin.system.BaseAction;
import fsi_customer.apsadmin.applicant.model.Applicant;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ApplicantAction extends BaseAction {

	private static final Logger _logger =  LoggerFactory.getLogger(ApplicantAction.class);

	public String newApplicant() {
		try {
			this.setStrutsAction(ApsAdminSystemConstants.ADD);
		} catch (Throwable t) {
			_logger.error("error in newApplicant", t);
			return FAILURE;
		}
		return SUCCESS;
	}

	public String edit() {
		try {
			Applicant applicant = null; // this.getApplicantManager().getApplicant(this.getId());
			if (null == applicant) {
				this.addActionError(this.getText("error.applicant.null"));
				return INPUT;
			}
			this.populateForm(applicant);
			this.setStrutsAction(ApsAdminSystemConstants.EDIT);
		} catch (Throwable t) {
			_logger.error("error in edit", t);
			return FAILURE;
		}
		return SUCCESS;
	}

	public String save() {
		try {
			Applicant applicant = this.createApplicant();
			int strutsAction = this.getStrutsAction();
			if (ApsAdminSystemConstants.ADD == strutsAction) {
//				this.getApplicantManager().addApplicant(applicant);
			} else if (ApsAdminSystemConstants.EDIT == strutsAction) {
//				this.getApplicantManager().updateApplicant(applicant);
			}
		} catch (Throwable t) {
			_logger.error("error in save", t);
			return FAILURE;
		}
		return SUCCESS;
	}

	public String trash() {
		try {
			Applicant applicant = null; // this.getApplicantManager().getApplicant(this.getId());
			if (null == applicant) {
				this.addActionError(this.getText("error.applicant.null"));
				return INPUT;
			}
			this.populateForm(applicant);
			this.setStrutsAction(ApsAdminSystemConstants.DELETE);
		} catch (Throwable t) {
			_logger.error("error in trash", t);
			return FAILURE;
		}
		return SUCCESS;
	}

	public String delete() {
		try {
			if (this.getStrutsAction() == ApsAdminSystemConstants.DELETE) {
//				this.getApplicantManager().deleteApplicant(this.getId());
			}
		} catch (Throwable t) {
			_logger.error("error in delete", t);
			return FAILURE;
		}
		return SUCCESS;
	}

	public String view() {
		try {
			Applicant applicant = null; // this.getApplicantManager().getApplicant(this.getId());
			if (null == applicant) {
				this.addActionError(this.getText("error.applicant.null"));
				return INPUT;
			}
			this.populateForm(applicant);
		} catch (Throwable t) {
			_logger.error("error in view", t);
			return FAILURE;
		}
		return SUCCESS;
	}

	private void populateForm(Applicant applicant) throws Throwable {
		this.setId(applicant.getId());
		this.setFirstname(applicant.getFirstname());
		this.setLastname(applicant.getLastname());
		this.setCompany(applicant.getCompany());
		this.setEmail(applicant.getEmail());
		this.setPwd(applicant.getPwd());
	}

	private Applicant createApplicant() {
		Applicant applicant = new Applicant();
		applicant.setId(this.getId());
		applicant.setFirstname(this.getFirstname());
		applicant.setLastname(this.getLastname());
		applicant.setCompany(this.getCompany());
		applicant.setEmail(this.getEmail());
		applicant.setPwd(this.getPwd());
		return applicant;
	}


	public int getStrutsAction() {
		return _strutsAction;
	}
	public void setStrutsAction(int strutsAction) {
		this._strutsAction = strutsAction;
	}

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


//	protected IApplicantManager getApplicantManager() {
//		return _applicantManager;
//	}
//	public void setApplicantManager(IApplicantManager applicantManager) {
//		this._applicantManager = applicantManager;
//	}

	private int _strutsAction;
	private int _id;
	private String _firstname;
	private String _lastname;
	private String _company;
	private String _email;
	private String _pwd;

//	private IApplicantManager _applicantManager;

}