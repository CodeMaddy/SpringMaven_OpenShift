package com.springmaven.controllers;

import com.springmaven.dao.HairTreatmentDAOImpl;
import com.springmaven.model.HairTreatment;
import com.springmaven.model.Vendor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

/**
 * Created by Gourav on 1/18/2017.
 */
@Controller
public class HairTreatmentController {
    @Autowired
    HairTreatmentDAOImpl hairTreatmentDAO;

    @RequestMapping(value = "/")
    public ModelAndView homePage() {
        ModelAndView modelView = new ModelAndView("index");
        return modelView;
    }

    @RequestMapping(value = "/index")
    public ModelAndView showindex() {
        ModelAndView modelView = new ModelAndView("index");
        return modelView;
    }

    @RequestMapping(value = "/hairtrt")
    public ModelAndView showhairtreatment() {
        ModelAndView modelView = new ModelAndView("hair_treatment_men");
        List<HairTreatment> HairTreatments;
        HairTreatments = hairTreatmentDAO.getAllHairtreatments();
        modelView.addObject("hairTreatments", HairTreatments);
        return modelView;
    }

    @RequestMapping(value = "/BookHairTreatment")
    public ModelAndView viewbookingpagehairstyle() {
        ModelAndView modelView = new ModelAndView("hairstyles_booking");
        return modelView;
    }


     /* ******************************** VENDOR-SIDE CODE ******************************** */

    /* ################################################################
       #                      ADD HAIR TREATMENTS DETAILS             #
       ################################################################ */
    @RequestMapping(value = "/AddHairTreatment")
    public ModelAndView addHairTreatmentView() {
        ModelAndView modelView = new ModelAndView("vendor_hairtreatment_views/vendor_AddHairTreatment");
        return modelView;
    }

    @RequestMapping(value = "/addHairTreatmentForm", method = RequestMethod.POST)
    public ModelAndView addHairTreatmentForm(@ModelAttribute("hairtreatment") HairTreatment hairTreatment, @RequestParam("files") CommonsMultipartFile[] files,
                                             HttpServletRequest servletRequest) {
        ModelAndView modelView = new ModelAndView("redirect:/AddHairTreatment");

        String pics[] = new String[files.length];
        for (int i = 0; i < files.length; i++) {
            MultipartFile file = files[i];
            try {
                byte barr[] = file.getBytes();
                String orgfileName = file.getOriginalFilename();
                int lastIndex = orgfileName.lastIndexOf('.');
                String extension = orgfileName.substring(lastIndex, orgfileName.length());

                String saloonName = hairTreatment.getVendorSaloonName();
                saloonName = saloonName.replace(" ", "");

                String path = servletRequest.getContextPath();
                File d = new File(path + "/" + "Database");
                if (!d.exists()) {
                    boolean br = d.mkdir();
                }

                File di = new File(d + "/" + saloonName);
                if (!di.exists()) {
                    boolean br = di.mkdir();
                }

                File di1 = new File(d + "/" + saloonName + "/hairTreatments");
                if (!di1.exists()) {
                    boolean br = di1.mkdir();
                }

                String htName = hairTreatment.getHtName();
                htName = htName.replace(" ", "");

                File dir = new File(di1 + "/" + htName);
                if (!dir.exists()) {
                    boolean br = dir.mkdir();
                }
                // Create the file on server
                File serverFile = new File(dir + "/" + htName + "_" + (i + 1) + extension);

                BufferedOutputStream bout = new BufferedOutputStream(
                        new FileOutputStream(serverFile));

                bout.write(barr);
                bout.flush();
                bout.close();

                pics[i] = "/" + saloonName + "/hairTreatments/" + htName + "/" + htName + "_" + (i + 1) + extension;
            } catch (Exception e) {
                System.out.println(e);
            }
        }
        hairTreatment.setHtPics(pics);
        int i = hairTreatmentDAO.addHairTreatment(hairTreatment);
        if (i == 1) {
            modelView.setViewName("vendor_success");
            modelView.addObject("service", "addHairTreatment");
        } else {
            modelView.addObject("error", "Error occured during registration please do try again");
        }
        return modelView;
    }

    /* #################### END ADD HAIR TREATMENTS ######################## */

    /* ################################################################
       #                        EDIT HAIR TREATMENTS                        #
       ################################################################ */

    @RequestMapping(value = "/EditHairTreatmentDetails")
    public ModelAndView editHairstyleView(@RequestParam(value = "htId") String hId, HttpSession session) {
        ModelAndView modelView = new ModelAndView("vendor_hairtreatment_views/vendor_editHairTreatment");
        HairTreatment hairTreatment = hairTreatmentDAO.getHairTreatmentsDetails(hId);
        Vendor vendor = (Vendor) session.getAttribute("vendor");
        modelView.addObject("vendor", vendor);
        modelView.addObject("hairTreatment", hairTreatment);
        return modelView;
    }

    @RequestMapping(value = "/updateHairTreatmentForm", method = RequestMethod.POST)
    public ModelAndView updateHairTreatmentForm(@ModelAttribute("hairtreatment") HairTreatment hairTreatment, @RequestParam("files") CommonsMultipartFile[] files,
                                                HttpServletRequest servletRequest) {
        ModelAndView modelView = new ModelAndView("redirect:/AddHairTreatment");

        String pics[] = new String[files.length];
        for (int i = 0; i < files.length; i++) {
            MultipartFile file = files[i];
            try {
                byte barr[] = file.getBytes();
                String orgfileName = file.getOriginalFilename();
                int lastIndex = orgfileName.lastIndexOf('.');
                String extension = orgfileName.substring(lastIndex, orgfileName.length());

                String saloonName = hairTreatment.getVendorSaloonName();
                saloonName = saloonName.replace(" ", "");

                String path = servletRequest.getContextPath();
                File d = new File(path + "/" + "Database");
                if (!d.exists()) {
                    boolean br = d.mkdir();
                }

                File di = new File(d + "/" + saloonName);
                if (!di.exists()) {
                    boolean br = di.mkdir();
                }

                File di1 = new File(d + "/" + saloonName + "/hairTreatments");
                if (!di1.exists()) {
                    boolean br = di1.mkdir();
                }

                String htName = hairTreatment.getHtName();
                htName = htName.replace(" ", "");

                File dir = new File(di1 + "/" + htName);
                if (!dir.exists()) {
                    boolean br = dir.mkdir();
                }
                // Create the file on server
                File serverFile = new File(dir + "/" + htName + "_" + (i + 1) + extension);

                BufferedOutputStream bout = new BufferedOutputStream(
                        new FileOutputStream(serverFile));

                bout.write(barr);
                bout.flush();
                bout.close();

                pics[i] = "/" + saloonName + "/hairTreatments/" + htName + "/" + htName + "_" + (i + 1) + extension;
            } catch (Exception e) {
                System.out.println(e);
            }
        }
        hairTreatment.setHtPics(pics);
        int i = hairTreatmentDAO.updateHairTreatmentDetails(hairTreatment);
        if (i == 1) {
            modelView.setViewName("vendor_success");
            modelView.addObject("service", "addHairTreatment");
        } else {
            modelView.addObject("error", "Error occured during registration please do try again");
        }
        return modelView;
    }


    /* #################### END OF EDIT HAIR TREATMENTS######################## */

    /* ################################################################
       #                   VIEW VENDOR HAIR TREATMENTS                #
       ################################################################ */

    @RequestMapping(value = "/ViewVendorHairTreatments")
    public ModelAndView viewAllVendorHairTreatmentView(HttpSession session) {
        ModelAndView modelView = new ModelAndView("vendor_hairtreatment_views/vendor_viewAllHairTreatment");
        Vendor v = (Vendor) session.getAttribute("vendor");
        List<HairTreatment> hairTreatments;
        if (v == null)
            modelView.setViewName("redirect:/VendorSignin");
        else {
            hairTreatments = hairTreatmentDAO.getVendorHairTreatments(v.getEmail());
            modelView.addObject("hairtreatments", hairTreatments);
        }
        return modelView;
    }

    /* #################### END OF VIEW HAIR TREATMENTS ######################## */

    /* ################################################################
       #                        DELETE HAIR TREATMENT                 #
       ################################################################ */
    @RequestMapping(value = "/DeleteHairTreatment")
    public void deleteHairTreatmentView() {

    }

    /* #################### END OF DELETE HAIR TREATMENT ######################## */

    /* *************************** END OF VENDOR-SIDE CODE *************************** */

}
