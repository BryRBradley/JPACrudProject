package com.skilldistillery.snack.data;

import java.util.List;

import org.springframework.stereotype.Service;

import com.skilldistillery.snack.entities.Snack;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

@Service
@Transactional
public class SnackDAOJpaImpl implements SnackDAO {
	@PersistenceContext
	private EntityManager em;

	@Override
	public Snack findById(int id) {
		Snack snack = em.find(Snack.class, id);
		return snack;
	}

	@Override
	public List<Snack> findAll() {
		String jpql = "select s from Snack s";
		List<Snack> snacks = em.createQuery(jpql, Snack.class).getResultList();
		return snacks;
	}

	@Override
	public Snack addSnack(Snack snack) {
		em.persist(snack);
		return snack;
	}

	@Override
	public String update(Snack updatedSnack, int id) {

		Snack foundSnack = em.find(Snack.class, id);

		foundSnack.setName(updatedSnack.getName());
		foundSnack.setCalories(updatedSnack.getCalories());
		foundSnack.setCarbs(updatedSnack.getCarbs());
		foundSnack.setprotein(updatedSnack.getprotein());
		foundSnack.setSugar(updatedSnack.getSugar());
		foundSnack.setPrice(updatedSnack.getPrice());

		return "redirect:/home.do";
	}

	@Override
	public Snack deleteSnack(int id) {

		Snack snack = em.find(Snack.class, id);
		if (snack != null) {
			em.remove(snack);
		}
		return snack;

	}
}
