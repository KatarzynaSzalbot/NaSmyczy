package na.smyczy.dogOwner;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping ("/formdogowner")
public class DogOwnerController {

private DogOwnerService dogOwnerService;

    public DogOwnerController(DogOwnerService dogOwnerService) {
        this.dogOwnerService = dogOwnerService;
    }

    @GetMapping("/add")
    public String add(Model model) {
        model.addAttribute ("dogOwnerM", new DogOwner ());
        return "dogOwner";
    }


    @PostMapping("/add") //czy to jest metoda odpowiedzialna za zapisywanie do bazy?
    public String add(@ModelAttribute DogOwner dogOwner) {
        dogOwnerService.saveDogOwner(dogOwner);
        return "redirect:../offers/add";
    }
}