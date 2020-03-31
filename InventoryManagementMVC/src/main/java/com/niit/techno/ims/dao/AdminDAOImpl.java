package com.niit.techno.ims.dao;

import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.techno.ims.model.Admin;
import com.niit.techno.ims.model.User;

@Repository
public class AdminDAOImpl implements AdminDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	public void saveAdmin(Admin theAdmin) {


		Session currentSession=sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(theAdmin);

	}

	
public Admin checkAdmin(Admin theAdmin) {
		
	Admin usr=null;
		Session session=null;
		try {
		 session = sessionFactory.getCurrentSession();
		CriteriaBuilder cb = session.getCriteriaBuilder();
		CriteriaQuery<Admin> cq = cb.createQuery(Admin.class);
		Root<Admin> root = cq.from(Admin.class);
		
		//cq.select(root.get("id"));
		cq.select(root).where(cb.and(
				cb.equal(root.get("email"), theAdmin.getEmail()),
				cb.equal(root.get("password"),theAdmin.getPassword())
			));
	
		Query query = session.createQuery(cq);
		query.setMaxResults(1);
		usr=(Admin) query.getSingleResult();
		
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null) {
				//session.close();
			}
		}
		
		return usr;
	}

}
