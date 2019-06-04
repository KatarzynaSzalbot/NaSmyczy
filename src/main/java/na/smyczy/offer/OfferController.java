package na.smyczy.offer;

import na.smyczy.dogOwner.DogOwner;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

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
        return "bufor";
    }

    @PostMapping("/bufor")
    public String findOfferByDate(@RequestParam String date, Model model){
        List<Offer> offers = offerService.findByDate(date);
        model.addAttribute ("offers", offers);
        return "bufor";
    }

}
