package ReportGenerator.ReportGenerator.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "account")
public class HomeController {

	@RequestMapping(value="/")
	public ModelAndView test(HttpServletResponse response) throws IOException{
		return new ModelAndView("account/index");
	}
	
	
	@RequestMapping(method = RequestMethod.GET)
	public String index() {
		return "account/index";
	}

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(
		@RequestParam("username") String username,
		@RequestParam("password") String password,
		HttpSession session,
		ModelMap modelMap) {
		if(username.equalsIgnoreCase("bhanu") && password.equalsIgnoreCase("123")) {
			session.setAttribute("username", username);
			return "account/success";
		} else {
			modelMap.put("error", "Invalid Account");
			return "account/index";
		}
	}

	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.removeAttribute("username");
		return "redirect:../account";
	}
}
