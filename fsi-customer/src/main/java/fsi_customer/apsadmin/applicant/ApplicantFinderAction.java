/*
 *
 * <Your licensing text here>
 *
 */
package fsi_customer.apsadmin.applicant;

import java.util.List;
import org.apache.commons.lang.StringUtils;

import com.agiletec.aps.system.common.FieldSearchFilter;
//import org.entando.entando.plugins.jpapplicant.aps.system.services.applicant.IApplicantManager;
import com.agiletec.apsadmin.system.BaseAction;
import fsi_customer.apsadmin.applicant.model.Applicant;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ApplicantFinderAction extends BaseAction {

	private static final Logger _logger =  LoggerFactory.getLogger(ApplicantFinderAction.class);

	public List<Integer> getApplicantsId() {
		try {
			FieldSearchFilter[] filters = new FieldSearchFilter[0];
			if (null != this.getId()) {
				//TODO add a constant into your IApplicantManager class
				FieldSearchFilter filterToAdd = new FieldSearchFilter(("id"), this.getId(), false);
				filters = this.addFilter(filters, filterToAdd);
			}
			if (StringUtils.isNotBlank(this.getFirstname())) {
				//TODO add a constant into your IApplicantManager class
				FieldSearchFilter filterToAdd = new FieldSearchFilter(("firstname"), this.getFirstname(), true);
				filters = this.addFilter(filters, filterToAdd);
			}
			if (StringUtils.isNotBlank(this.getLastname())) {
				//TODO add a constant into your IApplicantManager class
				FieldSearchFilter filterToAdd = new FieldSearchFilter(("lastname"), this.getLastname(), true);
				filters = this.addFilter(filters, filterToAdd);
			}
			if (StringUtils.isNotBlank(this.getCompany())) {
				//TODO add a constant into your IApplicantManager class
				FieldSearchFilter filterToAdd = new FieldSearchFilter(("company"), this.getCompany(), true);
				filters = this.addFilter(filters, filterToAdd);
			}
			if (StringUtils.isNotBlank(this.getEmail())) {
				//TODO add a constant into your IApplicantManager class
				FieldSearchFilter filterToAdd = new FieldSearchFilter(("email"), this.getEmail(), true);
				filters = this.addFilter(filters, filterToAdd);
			}
			if (StringUtils.isNotBlank(this.getPwd())) {
				//TODO add a constant into your IApplicantManager class
				FieldSearchFilter filterToAdd = new FieldSearchFilter(("pwd"), this.getPwd(), true);
				filters = this.addFilter(filters, filterToAdd);
			}
			List<Integer> applicants = null; // this.getApplicantManager().searchApplicants(filters);
			return applicants;
		} catch (Throwable t) {
			_logger.error("Error getting applicants list", t);
			throw new RuntimeException("Error getting applicants list", t);
		}
	}

	protected FieldSearchFilter[] addFilter(FieldSearchFilter[] filters, FieldSearchFilter filterToAdd) {
		int len = filters.length;
		FieldSearchFilter[] newFilters = new FieldSearchFilter[len + 1];
		for(int i=0; i < len; i++){
			newFilters[i] = filters[i];
		}
		newFilters[len] = filterToAdd;
		return newFilters;
	}

	public Applicant getApplicant(int id) {
		Applicant applicant = null;
		try {
			applicant = null; // this.getApplicantManager().getApplicant(id);
		} catch (Throwable t) {
			_logger.error("Error getting applicant with id {}", id, t);
			throw new RuntimeException("Error getting applicant with id " + id, t);
		}
		return applicant;
	}


	public Integer getId() {
		return _id;
	}
	public void setId(Integer id) {
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

	private Integer _id;
	private String _firstname;
	private String _lastname;
	private String _company;
	private String _email;
	private String _pwd;
//	private IApplicantManager _applicantManager;
}