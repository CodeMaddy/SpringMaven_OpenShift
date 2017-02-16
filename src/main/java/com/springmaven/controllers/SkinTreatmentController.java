package com.springmaven.controllers;

import com.springmaven.dao.SkinTreatmentDAOImpl;
import com.springmaven.model.SkinTreatment;
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

@Controller
public class SkinTreatmentController {
    @Autowired
    private SkinTreatmentDAOImpl skinTreatmentDAO;

    @RequestMapping(value = "/ViewSkinTreatments")
    public ModelAndView viewskinstyles(HttpSession session) {
        ModelAndView modelView = new ModelAndView("viewAllSkinTreatments");
        List<SkinTreatment> skinTreatments;
        skinTreatments = skinTreatmentDAO.getAllSkintreatments();
        modelView.addObject("skinTreatments", skinTreatments);
        return modelView;
    }

    //method to values to booking page
    @RequestMapping(value = "/BookSkinTreatment", method = RequestMethod.GET)
    public ModelAndView viewbookingpageskinstyle(@RequestParam(value = "skintreatmentId") String id) {
        ModelAndView modelView = new ModelAndView("SB");

        SkinTreatment s = skinTreatmentDAO.getSkinTreatmentsDetails(id);
        // Vendor v = vendorDAO.getVendorDetails(s.getVendorEmail());
        String hName = s.getStName();
        float cost=s.getStPrice();
        modelView.addObject("skintreatment", hName);
        modelView.addObject("price", cost);
        return modelView;
    }

/* ******************************** VENDOR-SIDE CODE ******************************** */

    /* ################################################################
       #                 ADD SKIN TREATMENT DETAILS                   #
       ################################################################ */
    @RequestMapping(value = "/AddSkinTreatment")
    public ModelAndView addSkinTreatmentView() {
        ModelAndView modelView = new ModelAndView("vendor_skintreatment_views/vendor_AddSkinTreatment");
        return modelView;
    }

    @RequestMapping(value = "/addSkinTreatmentForm", method = RequestMethod.POST)
    public ModelAndView addSkinTreatmentForm(@ModelAttribute("skintreatment") SkinTreatment skinTreatment, @RequestParam("files") CommonsMultipartFile[] files,
                                             HttpServletRequest servletRequest) {
        ModelAndView modelView = new ModelAndView("redirect:/AddSkinTreatment");

        String pics[] = new String[files.length];
        for (int i = 0; i < files.length; i++) {
            MultipartFile file = files[i];
            try {
                byte barr[] = file.getBytes();
                String orgfileName = file.getOriginalFilename();
                int lastIndex = orgfileName.lastIndexOf('.');
                String extension = orgfileName.substring(lastIndex, orgfileName.length());

                String saloonName = skinTreatment.getVendorSaloonName();
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

                File di1 = new File(d + "/" + saloonName + "/skinTreatments");
                if (!di1.exists()) {
                    boolean br = di1.mkdir();
                }

                String stName = skinTreatment.getStName();
                stName = stName.replace(" ", "");

                File dir = new File(di1 + "/" + stName);
                if (!dir.exists()) {
                    boolean br = dir.mkdir();
                }
                // Create the file on server
                File serverFile = new File(dir + "/" + stName + "_" + (i + 1) + extension);

                BufferedOutputStream bout = new BufferedOutputStream(
                        new FileOutputStream(serverFile));

                bout.write(barr);
                bout.flush();
                bout.close();

                pics[i] = "/" + saloonName + "/skinTreatments/" + stName + "/" + stName + "_" + (i + 1) + extension;
            } catch (Exception e) {
                System.out.println(e);
            }
        }
        skinTreatment.setStPics(pics);
        int i = skinTreatmentDAO.addSkinTreatment(skinTreatment);
        if (i == 1) {
            modelView.setViewName("vendor_success");
            modelView.addObject("service", "addSkinTreatment");
        } else {
            modelView.addObject("error", "Error occured during registration please do try again");
        }
        return modelView;
    }

    /* #################### END ADD SKIN TREATMENT ######################## */

    /* ################################################################
       #                 EDIT SKIN TREATMENT DETAILS                  #
       ################################################################ */

    @RequestMapping(value = "/EditSkinTreatmentDetails", method = RequestMethod.GET)
    public ModelAndView editSkinTreatmentView(@RequestParam(value = "stId") String stId, HttpSession session) {
        ModelAndView modelView = new ModelAndView("vendor_skintreatment_views/vendor_editSkinTreatment");
        SkinTreatment skinTreatment = skinTreatmentDAO.getSkinTreatmentsDetails(stId);
        Vendor vendor = (Vendor) session.getAttribute("vendor");
        modelView.addObject("vendor", vendor);
        modelView.addObject("skinTreatment", skinTreatment);
        return modelView;
    }

    @RequestMapping(value = "/updateSkinTreatmentForm", method = RequestMethod.POST)
    public ModelAndView updateSkinTreatmentForm(@ModelAttribute("skintreatment") SkinTreatment skinTreatment, @RequestParam("files") CommonsMultipartFile[] files,
                                                HttpServletRequest servletRequest) {
        ModelAndView modelView = new ModelAndView("redirect:/EditSkinTreatmentDetails");

        String pics[] = new String[files.length];
        for (int i = 0; i < files.length; i++) {
            MultipartFile file = files[i];
            try {
                byte barr[] = file.getBytes();
                String orgfileName = file.getOriginalFilename();
                int lastIndex = orgfileName.lastIndexOf('.');
                String extension = orgfileName.substring(lastIndex, orgfileName.length());

                String saloonName = skinTreatment.getVendorSaloonName();
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

                File di1 = new File(d + "/" + saloonName + "/skinTreatments");
                if (!di1.exists()) {
                    boolean br = di1.mkdir();
                }

                String stName = skinTreatment.getStName();
                stName = stName.replace(" ", "");

                File dir = new File(di1 + "/" + stName);
                if (!dir.exists()) {
                    boolean br = dir.mkdir();
                }
                // Create the file on server
                File serverFile = new File(dir + "/" + stName + "_" + (i + 1) + extension);

                BufferedOutputStream bout = new BufferedOutputStream(
                        new FileOutputStream(serverFile));

                bout.write(barr);
                bout.flush();
                bout.close();

                pics[i] = "/" + saloonName + "/skinTreatments/" + stName + "/" + stName + "_" + (i + 1) + extension;
            } catch (Exception e) {
                System.out.println(e);
            }
        }
        skinTreatment.setStPics(pics);
        int i = skinTreatmentDAO.updateSkinTreatmentDetails(skinTreatment);
        if (i == 1) {
            modelView.setViewName("vendor_success");
            modelView.addObject("service", "updateSkinTreatment");
        } else {
            modelView.addObject("error", "Error occured during registration please do try again");
        }
        return modelView;
    }

    /* #################### END OF EDIT SKIN TREATMENT ######################## */

    /* ################################################################
       #                    VIEW VENDOR SKIN TREATMENTS               #
       ################################################################ */

    @RequestMapping(value = "/ViewVendorSkinTreatments")
    public ModelAndView viewAllVendorSkinTreatmentsView(HttpSession session) {
        ModelAndView modelView = new ModelAndView("vendor_skintreatment_views/vendor_viewAllSkinTreatment");
        Vendor v = (Vendor) session.getAttribute("vendor");
        List<SkinTreatment> skinTreatments;
        if (v == null)
            modelView.setViewName("redirect:/VendorSignin");
        else {
            skinTreatments = skinTreatmentDAO.getVendorSkinTreatments(v.getEmail());
            modelView.addObject("skinTreatments", skinTreatments);
        }
        return modelView;
    }

    /* #################### END OF SKIN TREATMENT ######################## */

    /* ################################################################
       #                   DELETE SKIN TREATMENT                      #
       ################################################################ */

    @RequestMapping(value = "/DeleteSkinTreatment")
    public void deleteSkinTreatMentView() {

    }

    /* #################### END OF DELETE SKIN TREATMENT ######################## */

    /* *************************** END OF VENDOR-SIDE CODE *************************** */
}
