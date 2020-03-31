package com.niit.techno.ims.dao;

import java.util.List;

import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.techno.ims.model.Customer;
import com.niit.techno.ims.model.User;


@Repository
public class CustomerDAOImpl implements CustomerDAO {
	
	
	@Autowired
	private SessionFactory sessionFactory;
	

	public void saveCustomer(Customer theCustomer) {
		Session currentSession=sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(theCustomer);

	}

	public List<Customer> getCustomers()
	{
		Session session=sessionFactory.getCurrentSession();
		CriteriaBuilder cd=session.getCriteriaBuilder();
		CriteriaQuery<Customer> cq=cd.createQuery(Customer.class);
		Root<Customer> root=cq.from(Customer.class);
		cq.select(root);
		Query query=session.createQuery(cq);
		return query.getResultList();
	}
	
	

}
