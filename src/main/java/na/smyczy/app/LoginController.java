package na.smyczy.app;

import na.smyczy.dogOwner.DogOwner;
import na.smyczy.dogOwner.DogOwnerService;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("userSession")
public class LoginController {

    private DogOwnerService dogOwnerService;

    @Autowired
    public LoginController(DogOwnerService dogOwnerService) {
        this.dogOwnerService = dogOwnerService;
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }

//    @PostMapping("/")
//    public String login(@RequestParam String login, @RequestParam String password, Model model) {
//        DogOwner dogOwner = dogOwnerService.findByLogin(login);
//        model.addAttribute("isLogged", false);
//        if (dogOwner == null) {
//            return "login";
//        }
//        if (BCrypt.checkpw(password, dogOwner.getPassword())) {
//            model.addAttribute("userSession", dogOwner);
//            model.addAttribute("isLogged", true);
//            return "redirect:../offers/add";
//        }
//        return "login";
//    }

}

