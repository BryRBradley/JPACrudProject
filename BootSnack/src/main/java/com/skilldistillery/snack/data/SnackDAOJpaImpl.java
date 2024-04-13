package com.skilldistillery.snack.data;

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
}
