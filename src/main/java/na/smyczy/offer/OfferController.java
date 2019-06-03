package na.smyczy.offer;

import na.smyczy.dogOwner.DogOwner;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping ("/offers")
public class OfferController {

    private OfferService offerService;


    public OfferController(OfferService offerService) {
        this.offerService = offerService;
    }

    @GetMapping("/add")
    public String add(Model model) {
        model.addAttribute("offerM", new Offer ());
        return "offer";
    }


    @PostMapping("/add")
    public String respond(@ModelAttribute Offer offer) {
        offerService.saveOffer(offer);
        return "respond";
    }

    @GetMapping("/bufor")
    public String bufor(Model model) {
        model.addAttribute("bufor", new Offer ());
        return "bufor";
    }

}
