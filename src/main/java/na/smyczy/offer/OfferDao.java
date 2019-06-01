package na.smyczy.offer;

import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;




@Repository
public class OfferDao {

    @PersistenceContext
    private EntityManager entityManager;

    public void saveOffer(Offer offer) {
        entityManager.persist(offer);
    }

    public void updateOffer(Offer offer) {
        entityManager.merge(offer);
    }

    public Offer findOffer(Long id) {
        return entityManager.find(Offer.class, id);
    }

    public void deleteOffer(Long id) {
        Offer offer = findOffer(id);
        if (offer != null) {
            entityManager.remove(offer);
        }
    }
}
