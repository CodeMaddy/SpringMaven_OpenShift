package com.springmaven.controllers;

import com.springmaven.dao.SpaDAOImpl;
import com.springmaven.model.Spa;
import com.springmaven.model.Vendor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

@Controller
public class SpaController {
    @Autowired
    private SpaDAOImpl spaDAO;

    @RequestMapping(value = "/spa")
    public ModelAndView showspa() {
        ModelAndView modelView = new ModelAndView("spa_homepage");
        List<Spa> spa;
        spa = spaDAO.getAllSpas();
        modelView.addObject("spa", spa);
        return modelView;
    }

    /* @RequestMapping(value = "/viewspa")
     public ModelAndView viewHairstyles(HttpSession session) {
         ModelAndView modelView = new ModelAndView("viewAllSpa");
         List<Spa> spaList;
         spaList = spaDAO.getAllSpas();
         modelView.addObject("spa", spaList);
         return modelView;
     }
 */
    @RequestMapping(value = "/BookSpa")
    public ModelAndView viewbookingpagehairstyle() {
        ModelAndView modelView = new ModelAndView("SB");
        return modelView;
    }
    /* ******************************** VENDOR-SIDE CODE ******************************** */

    /* ################################################################
       #                        ADD SPA DETAILS                       #
       ################################################################ */
    @RequestMapping(value = "/AddSpa")
    public ModelAndView addSpaView() {
        ModelAndView modelView = new ModelAndView("vendor_spa_views/vendor_AddSpa");
        return modelView;
    }

    @RequestMapping(value = "/addSpaForm", method = RequestMethod.POST)
    public ModelAndView addSpaForm(@ModelAttribute("hairstyle") Spa spa, @RequestParam("files") MultipartFile[] files,
                                             HttpServletRequest servletRequest) {
        ModelAndView modelView = new ModelAndView("redirect:/AddSpa");

        String pics[] = new String[files.length];
        for (int i = 0; i < files.length; i++) {
            MultipartFile file = files[i];
            try {
                byte barr[] = file.getBytes();
                String orgfileName = file.getOriginalFilename();
                int lastIndex = orgfileName.lastIndexOf('.');
                String extension = orgfileName.substring(lastIndex, orgfileName.length());

                String saloonName =spa.getVendorSaloonName();
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

                File di1 = new File(d + "/" + saloonName + "/spa");
                if (!di1.exists()) {
                    boolean br = di1.mkdir();
                }

                String spaName = spa.getSpaName();
                spaName = spaName.replace(" ", "");

                File dir = new File(di1 + "/" + spaName);
                if (!dir.exists()) {
                    boolean br = dir.mkdir();
                }
                // Create the file on server
                File serverFile = new File(dir + "/" + spaName + "_" + (i + 1) + extension);

                BufferedOutputStream bout = new BufferedOutputStream(
                        new FileOutputStream(serverFile));

                bout.write(barr);
                bout.flush();
                bout.close();

                pics[i] = "/" + saloonName + "/spa/" + spaName + "/" + spaName + "_" + (i + 1) + extension;
            } catch (Exception e) {
                System.out.println(e);
            }
        }
        spa.setSpaPics(pics);
        int i = spaDAO.addSpa(spa);
        if (i == 1) {
            modelView.setViewName("vendor_success");
            modelView.addObject("service", "addSpa");
        } else {
            modelView.addObject("error", "Error occured during registration please do try again");
        }
        return modelView;
    }

    /* #################### END ADD SPA ######################## */

    /* ################################################################
       #                      EDIT SPA DETAILS                        #
       ################################################################ */

    @RequestMapping(value = "/EditSpaDetails")
    public ModelAndView editSpaView() {
        ModelAndView modelView = new ModelAndView("vendor_spa_views/vendor_editSpa");
        return modelView;
    }

    /* #################### END OF EDIT SPA ######################## */

    /* ################################################################
       #                          VIEW VENDOR SPA                     #
       ################################################################ */

    @RequestMapping(value = "/ViewVendorSpa")
    public ModelAndView viewAllVendorSpaView(HttpSession session) {
        ModelAndView modelView = new ModelAndView("vendor_spa_views/vendor_viewAllSpa");
        Vendor v = (Vendor) session.getAttribute("vendor");
        List<Spa> spas;
        if (v == null)
            modelView.setViewName("redirect:/VendorSignin");
        else {
            spas = spaDAO.getVendorSpas(v.getEmail());
            modelView.addObject("spa", spas);
        }
        return modelView;
    }

    /* #################### END OF SPA ######################## */

    /* ################################################################
       #                          DELETE SPA                          #
       ################################################################ */

    @RequestMapping(value = "/DeleteSpa")
    public void deleteSpaView(){

    }

    /* #################### END OF DELETE SPA ######################## */

      /* *************************** END OF VENDOR-SIDE CODE *************************** */
}
