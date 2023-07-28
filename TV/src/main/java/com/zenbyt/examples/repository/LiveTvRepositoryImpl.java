package com.zenbyt.examples.repository;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zenbyt.examples.entity.LiveTvEntity;

@Repository
public class LiveTvRepositoryImpl implements LiveTvRepository{
	
	
	@Autowired
	private EntityManagerFactory entityManagerFactory;

	public LiveTvRepositoryImpl () {
		System.out.println("Created " + this.getClass().getSimpleName());
	}

	@Override
	public boolean save(LiveTvEntity sentity) {
		System.out.println("Running the save in repo");
		EntityManager manager = this.entityManagerFactory.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		transaction.begin();
		manager.persist(sentity);
		transaction.commit();
		manager.close();
		return true;
	}
}
