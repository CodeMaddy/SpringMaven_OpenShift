package com.springmaven.controllers;

import com.springmaven.dao.HairStyleDAOImpl;
import com.springmaven.dao.VendorDAOImpl;
import com.springmaven.model.HairStyle;
import com.springmaven.model.Vendor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.List;

/**
 * Created by Gourav on 11/21/2016.
 */
@Controller
public class HairStyleController {
    @Autowired
    HairStyleDAOImpl hairStyleDAO;
    @Autowired
    VendorDAOImpl vendorDAO;

    @RequestMapping(value = "/Hairstyles")
    public ModelAndView viewHairstylesHomepage() {
        ModelAndView modelView = new ModelAndView("hairstyles_homepage");
        return modelView;
    }

    @RequestMapping(value = "/ViewHairstyles")
    public ModelAndView viewHairstyles(HttpSession session) {
        ModelAndView modelView = new ModelAndView("hairstyles_viewstyles");
        List<HairStyle> hairstyles;
        hairstyles = hairStyleDAO.getAllHairstyles();
        modelView.addObject("hairstyles", hairstyles);
        return modelView;
    }

    @RequestMapping(value = "/showDetailedPage", method = RequestMethod.GET)
    public ModelAndView viewDetailedPage(@RequestParam(value = "hairstyleId") String id) {
        ModelAndView modelView = new ModelAndView("hairstyles_detailedPage");
        HairStyle h = hairStyleDAO.getHairstyleDetails(id);
        Vendor v = vendorDAO.getVendorDetails(h.getSaloonEmail());
        String hName = h.getHairstyleName();

        modelView.addObject("hairstyle", h);
        modelView.addObject("vendorEmail",v );
        return modelView;
    }

    @RequestMapping(value = "/BookHairstyle")
    public ModelAndView viewbookingpagehairstyle() {
        ModelAndView modelView = new ModelAndView("hairstyles_booking");
        return modelView;
    }

    /* ******************************** VENDOR-SIDE CODE ******************************** */

    /* ################################################################
       #                        ADD HAIRSTYLE                         #
       ################################################################ */
    @RequestMapping(value = "/AddHairstyle")
    public ModelAndView addHairstyleView() {
        ModelAndView modelView = new ModelAndView("vendor_hairstyle_views/vendor_AddHairStyle");
        return modelView;
    }

    @RequestMapping(value = "/addHairstyleForm", method = RequestMethod.POST)
    public ModelAndView addhairStyleForm(@ModelAttribute("hairstyle") HairStyle hairStyle, @RequestParam("files") CommonsMultipartFile[] files,
                                         HttpServletRequest servletRequest) {
        ModelAndView modelView = new ModelAndView("redirect:/AddHairstyle");

        String pics[] = new String[files.length];
        for (int i = 0; i < files.length; i++) {
            MultipartFile file = files[i];
            try {
                byte barr[] = file.getBytes();
                String orgfileName = file.getOriginalFilename();
                int lastIndex = orgfileName.lastIndexOf('.');
                String extension = orgfileName.substring(lastIndex, orgfileName.length());

                String saloonName = hairStyle.getSaloonName();
                saloonName = saloonName.replace(" ", "");

                String path = servletRequest.getContextPath();
                File d = new File(path + "/" + "Database");
                if (!d.exists()) {
                    boolean br = d.mkdir();
                }

                File di = new File(d + "/" + saloonName );
                if (!di.exists()) {
                    boolean br = di.mkdir();
                }

                File di1 = new File(d + "/" + saloonName + "/hairstyles");
                if (!di1.exists()) {
                    boolean br = di1.mkdir();
                }

                String hairStyleName = hairStyle.getHairstyleName();
                hairStyleName = hairStyleName.replace(" ", "");

                File dir = new File(di1 + "/" + hairStyleName);
                if (!dir.exists()) {
                    boolean br = dir.mkdir();
                }
                // Create the file on server
                File serverFile = new File(dir + "/" + hairStyleName + "_" + (i + 1) + extension);

                BufferedOutputStream bout = new BufferedOutputStream(
                        new FileOutputStream(serverFile));

                bout.write(barr);
                bout.flush();
                bout.close();

                pics[i] = "/" + saloonName + "/hairstyles/" + hairStyleName + "/" + hairStyleName + "_" + (i + 1) + extension;
            } catch (Exception e) {
                System.out.println(e);
            }
        }
        hairStyle.setHairstylePics(pics);
        int i = hairStyleDAO.addHairStyle(hairStyle);
        if (i == 1) {
            modelView.setViewName("vendor_success");
            modelView.addObject("service", "addHairstyle");
        } else {
            modelView.addObject("error", "Error occured during registration please do try again");
        }
        return modelView;
    }

    /* #################### END ADD HAIRSTYLE ######################## */

    /* ################################################################
       #                        EDIT HAIRSTYLE                         #
       ################################################################ */

    @RequestMapping(value = "/EditHairstyleDetails", method = RequestMethod.GET)
    public ModelAndView editHairstyleView(@RequestParam(value = "hId") String hairstyleId ) {
        ModelAndView modelView = new ModelAndView("vendor_hairstyle_views/vendor_editHairstyle");
        HairStyle hairStyle = hairStyleDAO.getHairstyleDetails(hairstyleId);
        modelView.addObject("hairstyle", hairStyle);
        return modelView;
    }

    @RequestMapping(value = "/updateHairstyleForm", method = RequestMethod.POST)
    public ModelAndView updatehairStyleForm(@ModelAttribute("hairstyle") HairStyle hairStyle, @RequestParam("files") CommonsMultipartFile[] files,
                                         HttpServletRequest servletRequest) {
        ModelAndView modelView = new ModelAndView("redirect:/AddHairstyle");

        String pics[] = new String[files.length];
        for (int i = 0; i < files.length; i++) {
            MultipartFile file = files[i];
            try {
                byte barr[] = file.getBytes();
                String orgfileName = file.getOriginalFilename();
                int lastIndex = orgfileName.lastIndexOf('.');
                String extension = orgfileName.substring(lastIndex, orgfileName.length());

                String saloonName = hairStyle.getSaloonName();
                saloonName = saloonName.replace(" ", "");

                String path = servletRequest.getContextPath();
                File d = new File(path + "/" + "Database");
                if (!d.exists()) {
                    boolean br = d.mkdir();
                }

                File di = new File(d + "/" + saloonName );
                if (!di.exists()) {
                    boolean br = di.mkdir();
                }

                File di1 = new File(d + "/" + saloonName + "/hairstyles");
                if (!di1.exists()) {
                    boolean br = di1.mkdir();
                }

                String hairStyleName = hairStyle.getHairstyleName();
                hairStyleName = hairStyleName.replace(" ", "");

                File dir = new File(di1 + "/" + hairStyleName);
                if (!dir.exists()) {
                    boolean br = dir.mkdir();
                }
                // Create the file on server
                File serverFile = new File(dir + "/" + hairStyleName + "_" + (i + 1) + extension);

                BufferedOutputStream bout = new BufferedOutputStream(
                        new FileOutputStream(serverFile));

                bout.write(barr);
                bout.flush();
                bout.close();

                pics[i] = "/" + saloonName + "/hairstyles/" + hairStyleName + "/" + hairStyleName + "_" + (i + 1) + extension;
            } catch (Exception e) {
                System.out.println(e);
            }
        }

        hairStyle.setHairstylePics(pics);
        int i = hairStyleDAO.updateHairStyleDetails(hairStyle);

        if (i == 1) {
            modelView.setViewName("vendor_success");
            modelView.addObject("service", "updateHairstyle");
        } else {
            modelView.addObject("error", "Error occured during registration please do try again");
        }
        return modelView;
    }

    /* #################### END OF EDIT HAIRSTYLE ######################## */

    /* ################################################################
       #                        VIEW HAIRSTYLE                        #
       ################################################################ */
    @RequestMapping(value = "/ViewVendorHairStyles")
    public ModelAndView viewAllVendorHairstyleView(HttpSession session) {

        ModelAndView modelView = new ModelAndView("vendor_hairstyle_views/vendor_viewAllHairstyles");
        Vendor v = (Vendor) session.getAttribute("vendor");
        List<HairStyle> hairstyles;
        if (v == null)
            modelView.setViewName("redirect:/VendorSignin");
        else {
            hairstyles = hairStyleDAO.getAllVendorhairstyles(v.getEmail());
            modelView.addObject("hairstyles", hairstyles);
        }
        return modelView;
    }

    /* #################### END OF VIEW HAIRSTYLE ######################## */

    /* ################################################################
       #                        DELETE HAIRSTYLE                      #
       ################################################################ */
    @RequestMapping(value = "/DeleteHairStyle")
    public void deleteHairStyleView() {

    }
    /* #################### END OF DELETE HAIRSTYLE ######################## */

    /* *************************** END OF VENDOR-SIDE CODE *************************** */
}
