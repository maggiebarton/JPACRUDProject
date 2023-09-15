package com.skilldistillery.covers.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class CoverTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Cover cover;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPACovers");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		cover = em.find(Cover.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		cover = null;
	}

	@Test
	void test_Cover_mapping() {
		assertNotNull(cover);
		assertEquals("Stand By Me", cover.getTitle());
	}

}