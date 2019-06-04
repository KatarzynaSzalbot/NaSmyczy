package na.smyczy.dogFriend;

import na.smyczy.dogOwner.DogOwner;
import na.smyczy.dogOwner.DogOwnerService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping ("/formdogfriend")
public class DogFriendController {

    private DogFriendService dogFriendService;

    public DogFriendController(DogFriendService dogFriendService) {
        this.dogFriendService = dogFriendService;
    }

    @GetMapping("/add")
    public String add(Model model) {
        model.addAttribute ("dogFriendM", new DogFriend ());
        return "dogFriend";
    }


    @PostMapping("/add")
    public String add(@ModelAttribute DogFriend dogFriend) {
        dogFriendService.saveDogFriend (dogFriend);
        return "redirect:../offers/bufor";
    }
}
