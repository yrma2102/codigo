package com.example.codigo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class HomeController {
	@RequestMapping("/")
	public String index() {
		return "index.jsp";
	}
	@RequestMapping(value="/code", method=RequestMethod.POST)
	public String validar(@RequestParam(value="password") String password,RedirectAttributes redirectAttributes) {
		if(password.equals("bushido")) {
			return "code.jsp";
		}
		else {
			redirectAttributes.addFlashAttribute("error", "You must train harder!");
	        return "redirect:/";
		}
	}
	
	@RequestMapping("/code")
	public String flashMessages(RedirectAttributes redirectAttributes) {
        redirectAttributes.addFlashAttribute("error", "You must train harder!");
        return "redirect:/";
	}

}
