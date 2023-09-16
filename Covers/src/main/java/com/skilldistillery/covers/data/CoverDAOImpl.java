package com.skilldistillery.covers.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.covers.entities.Cover;

@Service
@Transactional
public class CoverDAOImpl implements CoverDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public Cover findById(int id) {
		return em.find(Cover.class, id);
	}

	@Override
	public List<Cover> findAll() {
		String jpql = "select c from Cover c";
		return em.createQuery(jpql, Cover.class).getResultList();
	}

	@Override
	public Cover create(Cover cover) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Cover update(Cover cover) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteById(int id) {
		// TODO Auto-generated method stub
		return false;
	}

}
