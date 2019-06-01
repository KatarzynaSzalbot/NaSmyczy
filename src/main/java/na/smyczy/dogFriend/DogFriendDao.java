package na.smyczy.dogFriend;

import na.smyczy.dogOwner.DogOwner;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Repository
public class DogFriendDao {

    @PersistenceContext
    private EntityManager entityManager;

    public void saveDogFriend(DogFriend dogFriend) {
        entityManager.persist(dogFriend);
    }

    public void updateDogFriend(DogFriend dogFriend) {
        entityManager.merge(dogFriend);
    }

    public DogFriend findDogFriend(Long id) {
        return entityManager.find(DogFriend.class, id);
    }

    public void deleteDogFriend(Long id) {
        DogFriend dogFriend = findDogFriend (id);
        if (dogFriend != null) {
            entityManager.remove(dogFriend);
        }
    }
}
