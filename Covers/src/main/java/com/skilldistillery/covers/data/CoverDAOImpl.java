package com.skilldistillery.covers.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.covers.entities.Cover;

@Service
@Transactional
public class CoverDAOImpl implements CoverDAO {
	private EntityManagerFactory emf = Persistence.createEntityManagerFactory("JPACovers");
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

		Cover newCover = new Cover();
		newCover.setTitle(cover.getTitle());
		newCover.setOriginalArtist(cover.getOriginalArtist());
		newCover.setSongKey(cover.getSongKey());
		newCover.setCapo(cover.getCapo());
		newCover.setStatus(cover.getStatus());
		newCover.setChordsURL(cover.getChordsURL());

		em.persist(cover);

		return newCover;
	}

	@Override
	public Cover update(Cover cover) {

		Cover dbCover = em.find(Cover.class, cover.getId());
		if (dbCover != null) {

			// set cover data
			dbCover.setTitle(cover.getTitle());
			dbCover.setOriginalArtist(cover.getOriginalArtist());
			dbCover.setSongKey(cover.getSongKey());
			dbCover.setCapo(cover.getCapo());
			dbCover.setStatus(cover.getStatus());
			dbCover.setChordsURL(cover.getChordsURL());

		}

		return dbCover;
	}

	@Override
	public boolean delete(int id) {

		Cover coverToDelete = em.find(Cover.class, id);
		boolean successfulDelete = false;
		if (coverToDelete != null) {
			em.remove(coverToDelete);
			successfulDelete = !em.contains(coverToDelete);
		}

		return successfulDelete;
	}

	@Override
	public List<Cover> findByStatus(String status) {
		//select * from cover where status like '%Mastered%';
		String jpql = "select c from Cover c where c.status = :status";
		List<Cover> covers = em.createQuery(jpql, Cover.class).setParameter("status", status).getResultList();
		return covers;
	}

}
