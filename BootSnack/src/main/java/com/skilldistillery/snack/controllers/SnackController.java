package com.skilldistillery.snack.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.snack.data.SnackDAO;
import com.skilldistillery.snack.entities.Snack;

@Controller
public class SnackController {

	@Autowired
	public SnackDAO snackDAO;

	public SnackController(SnackDAO snackDAO) {
		this.snackDAO = snackDAO;
	}

	@GetMapping({ "/", "home.do" })
	public String index(Model model) {
		model.addAttribute("snacks", snackDAO.findAll());
		return "home";
	}

	@GetMapping("getSnack.do")
	public String getSnack(@RequestParam("id") Integer id, Model model) {
		snackDAO.findById(id);
		model.addAttribute("snack", snackDAO.findById(id));
		return "views/show";

	}

	@PostMapping("addSnack.do")
	public String addSnack(@RequestParam("name") String name, @RequestParam("calories") Integer calories,
			@RequestParam("sugar") Integer sugar, @RequestParam("protein") Integer protein,
			@RequestParam("carbs") Integer carbs, @RequestParam("price") double price, Model model) {

		Snack snack = new Snack();
		snack.setName(name);
		snack.setCalories(calories);
		snack.setSugar(sugar);
		snack.setprotein(protein);
		snack.setCarbs(carbs);
		snack.setPrice(price);

		snackDAO.addSnack(snack);

		return "redirect:/home.do";
	}

	@PostMapping("updateSnack.do")
	public String updateSnack(@RequestParam("id") Integer id, @ModelAttribute("snack") Snack snack) {
		snackDAO.update(snack, id);
		return "redirect:/home.do";
	}

	@PostMapping("deleteSnack.do")
	public String deleteSnack(@RequestParam("id") Integer id) {
		snackDAO.deleteSnack(id);
		return "redirect:/home.do";
	}

}
