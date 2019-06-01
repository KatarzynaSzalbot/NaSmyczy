package na.smyczy.dogOwner;

import org.hibernate.Hibernate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.awt.print.Book;

@Service
@Transactional
public class DogOwnerService {

    private DogOwnerDao dogOwnerDao;

    public DogOwnerService(DogOwnerDao dogOwnerDao) {
        this.dogOwnerDao = dogOwnerDao;
    }

    public void saveDogOwner(DogOwner dogOwner) {
        dogOwnerDao.saveDogOwner (dogOwner);
    }

    public void updateDogOwner(DogOwner dogOwner) {
        dogOwnerDao.updateDogOwner (dogOwner);
    }

    public DogOwner findDogOwner(Long id) {
        return dogOwnerDao.findDogOwner (id);
    }



    public void deleteDogOwner(Long id) {
        dogOwnerDao.deleteDogOwner (id);
    }
}
