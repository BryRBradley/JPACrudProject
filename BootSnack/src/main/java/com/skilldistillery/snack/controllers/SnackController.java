package com.skilldistillery.snack.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.snack.data.SnackDAO;
import com.skilldistillery.snack.entities.Snack;

@Controller
public class SnackController {

	public SnackDAO snackDAO;

	public SnackController(SnackDAO snackDAO) {
		this.snackDAO = snackDAO;
	}

	@GetMapping({ "/", "home.do" })
	public String index() {
		return "home";
	}

	@GetMapping({ "getSnack.do" })
	public String getSnackById(@RequestParam("id") int id, Model model) {
		Snack snack = snackDAO.findById(id);
		model.addAttribute("snack", snack);
		return "views/show";
	}
}
