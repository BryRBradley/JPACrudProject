package com.skilldistillery.snack.data;

import java.util.List;

import com.skilldistillery.snack.entities.Snack;

public interface SnackDAO {
	Snack findById(int id);

	String update(Snack snack, int id);

	List<Snack> findAll();

	Snack addSnack(Snack snack);

	Snack deleteSnack(int id);

}
