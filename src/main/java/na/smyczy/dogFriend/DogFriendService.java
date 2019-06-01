package na.smyczy.dogFriend;



import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class DogFriendService {

    private DogFriendDao dogFriendDao;

    public DogFriendService(DogFriendDao dogFriendDaoDao) {
        this.dogFriendDao = dogFriendDao;
    }

    public void saveDogFriend(DogFriend dogFriend) {
        dogFriendDao.saveDogFriend (dogFriend);
    }

    public void updateDogFriend(DogFriend dogFriend) {
        dogFriendDao.updateDogFriend (dogFriend);
    }

    public DogFriend findDogFriend(Long id) {
        return dogFriendDao.findDogFriend (id);
    }



    public void deleteDogFriend(Long id) {
        dogFriendDao.deleteDogFriend (id);
    }
}
