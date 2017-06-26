/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import ConnectionFactory.HibernateUtil;
import Model.LegalPerson;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author tiago
 */
public class LegalPersonDAO {

    private SessionFactory sf = new HibernateUtil().getConnection();
    private Session session;

    public LegalPersonDAO() {
        session = sf.openSession();
    }

    public boolean addLegal(LegalPerson lp) {
        try {
            Transaction tx = session.beginTransaction();
            session.save(lp);
            tx.commit();
            return true;
        } catch (Exception e) {
            return false;
        } finally {
            if (session.isOpen()) {
                session.close();
            } else {
            }
        }
    }

    public boolean updateLegal(LegalPerson lp) {
        try {
            Transaction tx = session.beginTransaction();
            session.update(lp);
            tx.commit();
            return true;
        } catch (Exception e) {
            return false;
        } finally {
            if (session.isOpen()) {
                session.close();
            } else {
            }
        }
    }

    public boolean deleteLegal(LegalPerson lp) {
        try {
            Transaction tx = session.beginTransaction();
            session.delete(lp);
            tx.commit();
            return true;
        } catch (Exception e) {
            return false;
        } finally {
            if (session.isOpen()) {
                session.close();
            } else {
            }
        }
    }
}
