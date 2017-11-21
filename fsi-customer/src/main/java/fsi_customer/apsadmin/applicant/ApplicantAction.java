/*
 *
 * <Your licensing text here>
 *
 */
package fsi_customer.apsadmin.applicant;

import com.agiletec.aps.system.services.authorization.Authorization;
import com.agiletec.aps.system.services.group.Group;
import com.agiletec.aps.system.services.group.IGroupManager;
import com.agiletec.aps.system.services.user.IUserManager;
import com.agiletec.aps.system.services.user.User;
import com.agiletec.apsadmin.system.ApsAdminSystemConstants;
import com.agiletec.apsadmin.system.BaseAction;
import fsi_customer.apsadmin.applicant.model.Applicant;
import java.util.ArrayList;
import java.util.List;
import org.entando.entando.aps.system.services.userprofile.IUserProfileManager;
import static org.entando.entando.apsadmin.user.UserAuthorizationAction.CURRENT_FORM_USER_AUTHS_PARAM_NAME;
import org.entando.entando.apsadmin.user.UserAuthsFormBean;
import org.entando.entando.plugins.jpkiebpm.aps.system.services.kie.IKieFormManager;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import javax.servlet.http.HttpServletRequest;

public class ApplicantAction extends BaseAction {

    private static final Logger _logger = LoggerFactory.getLogger(ApplicantAction.class);

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
            if (!applicant.getPwd().equals(this.getCnfpwd())) {
                this.addFieldError("pwd", "password confirm failed!");
                return INPUT;
            }
            if (ApsAdminSystemConstants.ADD == strutsAction) {
                User user = new User();
                user.setUsername(this.getUsername());
                user.setPassword(this.getCnfpwd());
                user.setDisabled(false);
                this.getUserManager().addUser(user);
                Group group = this.getGroupManager().getGroup("customers");
                Authorization authorization = new Authorization(group, null);
                List<Authorization> authorizations = new ArrayList<>();
                authorizations.add(authorization);
                String username = this.getUsername();
                this.getAuthorizationManager().updateUserAuthorizations(username, authorizations);
                this.getRequest().getSession().removeAttribute(CURRENT_FORM_USER_AUTHS_PARAM_NAME);
                boolean res = this.getKieFormManager().sendSignal("5fdf1ed1672f5358e70570bd7f50b163", this.getProcid(), "account_registered", "\"" + this.getUsername() + "\"", null);
                _logger.info("result: {}", res);
                if (res) {
                    this.addActionMessage("account created and signal successfully sent");
                } else {
                    this.addActionError("Signal not sent");
                }
            } else if (ApsAdminSystemConstants.EDIT == strutsAction) {
//				this.getApplicantManager().updateApplicant(applicant);
            }
        } catch (Throwable t) {
            _logger.error("error in save", t);
            this.addActionError("Problems with form!");
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

    public String getUsername() {
        return _username;
    }

    public void setUsername(String _username) {
        this._username = _username;
    }

    public String getPwd() {
        return _pwd;
    }

    public void setPwd(String pwd) {
        this._pwd = pwd;
    }

    public String getCnfpwd() {
        return _cnfpwd;
    }

    public void setCnfpwd(String _cnfpwd) {
        this._cnfpwd = _cnfpwd;
    }

    public String getProcid() {
        return _procid;
    }

    public void setProcid(String _procid) {
        this._procid = _procid;
    }

    public IUserManager getUserManager() {
        return _userManager;
    }

    public void setUserManager(IUserManager _userManager) {
        this._userManager = _userManager;
    }

    public IUserProfileManager getUserProfileManager() {
        return _userProfileManager;
    }

    public void setUserProfileManager(IUserProfileManager _userProfileManager) {
        this._userProfileManager = _userProfileManager;
    }

    public IKieFormManager getKieFormManager() {
        return _kieFormManager;
    }

    public void setKieFormManager(IKieFormManager kieFormManager) {
        this._kieFormManager = kieFormManager;
    }

    public IGroupManager getGroupManager() {
        return _groupManager;
    }

    public void setGroupManager(IGroupManager _groupManager) {
        this._groupManager = _groupManager;
    }

    private int _strutsAction;
    private int _id;
    private String _firstname;
    private String _lastname;
    private String _company;
    private String _email;
    private String _username;
    private String _pwd;
    private String _cnfpwd;
    private String _procid;

    private IUserManager _userManager;
    private IUserProfileManager _userProfileManager;
    private IKieFormManager _kieFormManager;
    private IGroupManager _groupManager;
}
