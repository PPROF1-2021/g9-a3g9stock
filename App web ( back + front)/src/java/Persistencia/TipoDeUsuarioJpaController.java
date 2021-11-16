/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Persistencia;

import Logica.TipoDeUsuario;
import Persistencia.exceptions.NonexistentEntityException;
import java.io.Serializable;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.Persistence;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

/**
 *
 * @author Caro
 */
public class TipoDeUsuarioJpaController implements Serializable {

    public TipoDeUsuarioJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

      public TipoDeUsuarioJpaController() {
        emf = Persistence.createEntityManagerFactory("BfssPU");
    }
    public void create(TipoDeUsuario tipoDeUsuario) {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(tipoDeUsuario);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(TipoDeUsuario tipoDeUsuario) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            tipoDeUsuario = em.merge(tipoDeUsuario);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                int id = tipoDeUsuario.getIdTipoUsuario();
                if (findTipoDeUsuario(id) == null) {
                    throw new NonexistentEntityException("The tipoDeUsuario with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(int id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            TipoDeUsuario tipoDeUsuario;
            try {
                tipoDeUsuario = em.getReference(TipoDeUsuario.class, id);
                tipoDeUsuario.getIdTipoUsuario();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The tipoDeUsuario with id " + id + " no longer exists.", enfe);
            }
            em.remove(tipoDeUsuario);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<TipoDeUsuario> findTipoDeUsuarioEntities() {
        return findTipoDeUsuarioEntities(true, -1, -1);
    }

    public List<TipoDeUsuario> findTipoDeUsuarioEntities(int maxResults, int firstResult) {
        return findTipoDeUsuarioEntities(false, maxResults, firstResult);
    }

    private List<TipoDeUsuario> findTipoDeUsuarioEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(TipoDeUsuario.class));
            Query q = em.createQuery(cq);
            if (!all) {
                q.setMaxResults(maxResults);
                q.setFirstResult(firstResult);
            }
            return q.getResultList();
        } finally {
            em.close();
        }
    }

    public TipoDeUsuario findTipoDeUsuario(int id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(TipoDeUsuario.class, id);
        } finally {
            em.close();
        }
    }

    public int getTipoDeUsuarioCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<TipoDeUsuario> rt = cq.from(TipoDeUsuario.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
