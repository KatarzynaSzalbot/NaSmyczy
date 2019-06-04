package na.smyczy.dogOwner;


import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;


@Repository
public class DogOwnerDao {


    @PersistenceContext
    private EntityManager entityManager;

    public  DogOwner findByLogin(String login) {
        Query query = entityManager.createQuery ("select b from DogOwner b where b.login = :login");
        query.setParameter ("login", login);
        return (DogOwner) query.getSingleResult ();
    }

    public void saveDogOwner(DogOwner dogOwner) {
        entityManager.persist(dogOwner);
    }

    public void updateDogOwner(DogOwner dogOwner) {
        entityManager.merge(dogOwner);
    }

    public DogOwner findDogOwner(Long id) {
        return entityManager.find(DogOwner.class, id);
    }

    public void deleteDogOwner(Long id) {
        DogOwner dogOwner = findDogOwner (id);
        if (dogOwner != null) {
            entityManager.remove(dogOwner);
        }
    }
}
