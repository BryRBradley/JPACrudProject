package com.skilldistillery.snack;

import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;

import com.skilldistillery.snack.controllers.SnackController;
import com.skilldistillery.snack.data.SnackDAO;
import com.skilldistillery.snack.entities.Snack;

@RunWith(SpringRunner.class)
@WebMvcTest(SnackController.class)
public class BootSnackApplicationTests {

	@Autowired
	private MockMvc mockMvc;

	@MockBean
	private SnackDAO snackDAO;

//	JUnit tests for controller

	@Test
	public void testGetSnack() throws Exception {
		// Mock the behavior of the DAO layer
		Snack mockSnack = new Snack();
		mockSnack.setId(1);
		mockSnack.setName("Test Snack");
		when(snackDAO.findById(1)).thenReturn(mockSnack);

		// Perform the GET request and verify the response
		mockMvc.perform(get("/getSnack.do?id=1")).andExpect(status().isOk()).andExpect(view().name("views/show"))
				.andExpect(model().attribute("snack", mockSnack));
	}

}