package com.skilldistillery.covers.data;

import java.util.List;

import com.skilldistillery.covers.entities.Cover;

public interface CoverDAO {

	Cover findById(int id);
	List<Cover> findAll();
	Cover create (Cover cover);
	Cover update (Cover cover);
	boolean delete (int id);
	List<Cover> findByStatus(String status);
	List<Cover> findByKey(String songKey);

}
