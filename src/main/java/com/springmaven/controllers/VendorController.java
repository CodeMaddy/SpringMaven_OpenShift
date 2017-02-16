package com.springmaven.controllers;

import com.springmaven.dao.*;
import com.springmaven.model.*;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.List;
import java.util.UUID;

@Controller
public class VendorController {
    @Autowired
    HairStyleDAOImpl hairStyleDAO;
    @Autowired
    VendorDAOImpl vendorDAO;
    @Autowired
    HairTreatmentDAOImpl hairTreatmentDAO;
    @Autowired
    SkinTreatmentDAOImpl skinTreatmentDAO;
    @Autowired
    SpaDAOImpl spaDAO;
    @Autowired
    Email sendEmail;

    @RequestMapping("/Vendor")
    public ModelAndView vendorHome(HttpSession session) {
        ModelAndView modelView = new ModelAndView("vendor_dashboard");
        Vendor v = (Vendor) session.getAttribute("vendor");
        List<HairStyle> hairstyles;
        List<SkinTreatment> skinTreatments;
        List<HairTreatment> hairTreatments;
        List<Spa> spas;
        if (v == null)
            modelView.setViewName("redirect:/VendorSignin");
        else {
            String[] services = v.getServices();
            for(int i=0; i<services.length; i++){
                if(services[i] == "HairStyles"){
                    hairstyles = hairStyleDAO.getAllVendorhairstyles(v.getEmail());
                    modelView.addObject("hairstyles", hairstyles);
                }
                else if(services[i] == "HairTreatments"){
                    hairTreatments = hairTreatmentDAO.getVendorHairTreatments(v.getEmail());
                    modelView.addObject("hairtreatments", hairTreatments);
                }
                else if(services[i] == "SkinTreatments"){
                    skinTreatments = skinTreatmentDAO.getVendorSkinTreatments(v.getEmail());
                    modelView.addObject("skintreatments", skinTreatments);
                }
                else if(services[i] == "Spa"){
                    spas = spaDAO.getVendorSpas(v.getEmail());
                    modelView.addObject("spas", spas);
                }
            }
        }
        return modelView;
    }

    /* ################################################################
       #                VENDOR LOGIN                                  #
       ################################################################ */

    @RequestMapping(value = "/VendorSignin")
    public ModelAndView vendorSignInView() {
        ModelAndView modelView = new ModelAndView("vendor_signin");
        return modelView;
    }

    @RequestMapping(value = "/VendorLogout")
    public ModelAndView logoutVendor(HttpSession session) {
        session.invalidate();
//        session.removeAttribute("username");
        ModelAndView modelView = new ModelAndView("redirect:/VendorSignin");
        return modelView;
    }

    @RequestMapping(value = "/authenticateVendorLogin", method = RequestMethod.POST)
    public
    @ResponseBody
    ModelAndView authenticateVendorLogin(@RequestParam String email, @RequestParam String password,
                                         HttpSession session) {
        ModelAndView modelView = new ModelAndView("vendor_signin");
        Vendor v = vendorDAO.authenticateVendorLogin(email, password);
        if (v == null) {
            modelView.addObject("error", "Invalid Email/Password !!");
            return modelView;
        }
        session.setAttribute("vendor", v);
        modelView.setViewName("redirect:/ViewVendorHairStyles");
        return modelView;
    }

    /* #################### END OF VENDOR LOGIN ######################## */


    /* ################################################################
       #                VENDOR REGISTRATION                           #
       ################################################################ */

    @RequestMapping(value = "/VendorSignUp")
    public ModelAndView vendorSignUp() {
        ModelAndView modelView = new ModelAndView("vendor_signup");
        return modelView;
    }

    @RequestMapping(value = "/vendorSignupSubmitForm", method = RequestMethod.POST)
    public ModelAndView vendorRegister(@ModelAttribute("vendor") Vendor ven, @RequestParam MultipartFile file, HttpServletRequest request) {
        ModelAndView modelView = new ModelAndView("redirect:/VendorSignUp");
        String uuid = UUID.randomUUID().toString();
        ven.setPassword(uuid);
        ven.setIsActivated(false);

        try {
            byte barr[] = file.getBytes();
            String orgfileName = file.getOriginalFilename();

            int lastIndex = orgfileName.lastIndexOf('.');
            String extension = orgfileName.substring(lastIndex, orgfileName.length());

            String saloonName = ven.getSaloonName();
            saloonName = saloonName.replace(" ", "");

            String contextPath = request.getContextPath();
            File di = new File(contextPath + "/Database/");
            if (!di.exists())
                di.mkdir();

            File dir = new File(di + "/" + saloonName);
            if (!dir.exists()) {
                boolean br = dir.mkdir();
            }

            // Create the file on server
            File serverFile = new File(dir + "/" + saloonName + "_pic" + extension);

            BufferedOutputStream bout = new BufferedOutputStream(
                    new FileOutputStream(serverFile));

            bout.write(barr);
            bout.flush();
            bout.close();
            ven.setSaloonPic(serverFile.toString());
        } catch (Exception e) {
            System.out.println(e);
        }

        int i = vendorDAO.insertVendorData(ven);
        if (i == 1) {
            String toAddr = ven.getEmail();
            String fromAddr = "setuastyle@gmail.com";

            // email subject
            String subject = "Hey.. This email sent by Spring MVC";

            // email body
            String body = "<h3>Hi " + ven.getOwnerName() + ", </h3> " +
                    "<h4> Welcome to Set Your Style</h4>\n" +
                    " <p>Its pleasure to have you. Your saloon <strong>" + ven.getSaloonName() + "</strong> has been successfully registered as vendor to start your account activation process.\n" +
                    "    Please verify your email by click the below link.\n" +
                    "</p>" +
                    "<div style=\"align-content: center; text-align: center;\">\n" +
                    "    <button type=\"submit\" onclick=\"\" style=\"background-color: #4CAF50; /* Green */\n" +
                    "    border: none;color: white;padding: 15px 32px;text-align: center;text-decoration: none; display: inline-block;\n" +
                    "    font-size: 16px;border-radius: 10px;\"><a href= \"http://10.66.20.2:8080/registrationConfirm?verify=" + ven.getEmail() + "&key=" + ven.getPassword() + "\" style=\"text-decoration: none; color: white\">" +
                    "Verify your Email</a></button>";

            sendEmail.sendEmail(toAddr, fromAddr, subject, body);
            modelView.setViewName("vendor_success");
            modelView.addObject("service", "RegisterSuccess");
        } else {
            modelView.addObject("error", "Error occured during registration please do try again");
        }
        return modelView;
    }

    @RequestMapping(value = "/RegisterSuccess")
    public ModelAndView registerSuccess() {
        ModelAndView modelView = new ModelAndView("vendor_success");
        modelView.addObject("service", "RegisterSuccess");
        return modelView;
    }

    @RequestMapping(value = "/registrationConfirm", method = RequestMethod.GET)
    public ModelAndView activateAccount(@RequestParam("verify") String email, @RequestParam(value = "key") String pass) {
        ModelAndView modelView = new ModelAndView("vendor_registerConfirm");
//        System.out.println(email);
//        System.out.println(pass);
        boolean flag = vendorDAO.activateVendorAccount(email, pass);
        if (flag)
            modelView.addObject("success", "success");
        return modelView;
    }

    @RequestMapping(value = "/choosePasswordSubmitForm", method = RequestMethod.POST)
    public ModelAndView firstLogin(@RequestParam("email")String email,@RequestParam("pwd1") String password){
        ModelAndView modelView = new ModelAndView("vendor_success");
        boolean flag = vendorDAO.updatePassword(email, password);
        if (flag)
            modelView.addObject("service", "UpdatePasswordSuccess");
        return modelView;
    }

    /* #################### END OF VENDOR REGISTRATION ######################## */


    /* ################################################################
       #                   CODE TO LOAD IMAGE                         #
       ################################################################ */

    @RequestMapping(value = "/showImage/{saloonName}/{folder}/{hairstyleName}/{imageName}", method = RequestMethod.GET)
    @ResponseBody
    public void getImage(@PathVariable(value = "saloonName") String saloonName,
                         @PathVariable(value = "folder") String folder,
                         @PathVariable(value = "hairstyleName") String haistyleName,
                         @PathVariable(value = "imageName") String imageName, HttpServletResponse response) throws IOException {

        response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
        try {
            InputStream is = new FileInputStream("C:\\Database" + File.separator + saloonName +
                    File.separator + folder + File.separator + haistyleName + File.separator + imageName + ".jpg");
            IOUtils.copy(is, response.getOutputStream());
        } catch (IOException e) {
            System.out.println("Couldn't open image from " + "C:\\Database\\" + saloonName + "\\" + folder + "\\" + haistyleName + "\\" + imageName + ".jpg");
        }
    }
    /* #################### END OF LOAD IMAGE ######################## */
}
