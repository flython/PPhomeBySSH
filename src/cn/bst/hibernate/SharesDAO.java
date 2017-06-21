package cn.bst.hibernate;

import java.sql.Timestamp;
import java.util.List;
import org.hibernate.LockOptions;
import org.hibernate.Query;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import cn.bst.model.Shares;

/**
 	* A data access object (DAO) providing persistence and search support for Shares entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see cn.bst.model.Shares
  * @author MyEclipse Persistence Tools 
 */
public class SharesDAO extends BaseHibernateDAO  {
	     private static final Logger log = LoggerFactory.getLogger(SharesDAO.class);
		//property constants
	public static final String TITLE = "title";
	public static final String SHEAR_IMAGE = "shearImage";
	public static final String CONTENT = "content";
	public static final String MASTER_ID = "masterId";
	public static final String TAG_ARRAY = "tagArray";
	public static final String REPLYS_COUNT = "replysCount";
	public static final String LIKE_COUNT = "likeCount";



    
    public void save(Shares transientInstance) {
        log.debug("saving Shares instance");
        try {
            getSession().save(transientInstance);
            log.debug("save successful");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }
    
	public void delete(Shares persistentInstance) {
        log.debug("deleting Shares instance");
        try {
            getSession().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }
    
    public Shares findById( java.lang.Integer id) {
        log.debug("getting Shares instance with id: " + id);
        try {
            Shares instance = (Shares) getSession()
                    .get("cn.bst.model.Shares", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }
    
    
    public List findByExample(Shares instance) {
        log.debug("finding Shares instance by example");
        try {
            List results = getSession()
                    .createCriteria("cn.bst.model.Shares")
                    .add(Example.create(instance))
            .list();
            log.debug("find by example successful, result size: " + results.size());
            return results;
        } catch (RuntimeException re) {
            log.error("find by example failed", re);
            throw re;
        }
    }    
    
    public List findByProperty(String propertyName, Object value) {
      log.debug("finding Shares instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from Shares as model where model." 
         						+ propertyName + "= ?";
         Query queryObject = getSession().createQuery(queryString);
		 queryObject.setParameter(0, value);
		 return queryObject.list();
      } catch (RuntimeException re) {
         log.error("find by property name failed", re);
         throw re;
      }
	}

	public List findByTitle(Object title
	) {
		return findByProperty(TITLE, title
		);
	}
	
	public List findByShearImage(Object shearImage
	) {
		return findByProperty(SHEAR_IMAGE, shearImage
		);
	}
	
	public List findByContent(Object content
	) {
		return findByProperty(CONTENT, content
		);
	}
	
	public List findByMasterId(Object masterId
	) {
		return findByProperty(MASTER_ID, masterId
		);
	}
	
	public List findByTagArray(Object tagArray
	) {
		return findByProperty(TAG_ARRAY, tagArray
		);
	}
	
	public List findByReplysCount(Object replysCount
	) {
		return findByProperty(REPLYS_COUNT, replysCount
		);
	}
	
	public List findByLikeCount(Object likeCount
	) {
		return findByProperty(LIKE_COUNT, likeCount
		);
	}
	

	public List findAll() {
		log.debug("finding all Shares instances");
		try {
			String queryString = "from Shares";
	         Query queryObject = getSession().createQuery(queryString);
			 return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
    public Shares merge(Shares detachedInstance) {
        log.debug("merging Shares instance");
        try {
            Shares result = (Shares) getSession()
                    .merge(detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }

    public void attachDirty(Shares instance) {
        log.debug("attaching dirty Shares instance");
        try {
            getSession().saveOrUpdate(instance);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
    
    public void attachClean(Shares instance) {
        log.debug("attaching clean Shares instance");
        try {
                      	getSession().buildLockRequest(LockOptions.NONE).lock(instance);
          	            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
}