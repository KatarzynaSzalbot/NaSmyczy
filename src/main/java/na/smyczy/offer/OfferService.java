package na.smyczy.offer;

import org.hibernate.Hibernate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.awt.print.Book;

@Service
@Transactional
public class OfferService {

    private OfferDao offerDao;

    public OfferService(OfferDao offerDao) {
        this.offerDao = offerDao;
    }

    public void saveOffer(Offer offer) {
        offerDao.saveOffer(offer);
    }

    public void updateOffer(Offer offer) {
        offerDao.updateOffer(offer);
    }

    public Offer findOffer(Long id) {
        return offerDao.findOffer(id);
    }


    public void deleteOffer(Long id) {
        offerDao.deleteOffer(id);
    }
}
