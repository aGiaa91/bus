package com.example.bus.controller;

import com.example.bus.Departure;
import com.example.bus.Reservation;
import com.example.bus.service.CompanyService;
import com.example.bus.service.DepartureService;
import com.example.bus.service.ReservationService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Slf4j
@Controller
public class HomeController {
    private final CompanyService companyService;
    private final DepartureService departureService;
    private final ReservationService reservationService;

    @Autowired
    public HomeController(CompanyService companyService, DepartureService departureService, ReservationService reservationService) {
        this.companyService = companyService;
        this.departureService = departureService;
        this.reservationService = reservationService;
    }

    @GetMapping("/")
    public String index(Model model) {
        model.addAttribute("companies", companyService.getAll());
        model.addAttribute("departures", departureService.getAll());
        return "home";
    }

    @GetMapping("/reservation/{id}")
    public String reservation(@PathVariable int id, Model model) {
        model.addAttribute("departure", departureService.getById(id));
        if (model.containsAttribute("message")) {
            model.addAttribute("message", model.asMap().get("message"));
        }
        return "reservations";
    }

    @PostMapping("/reserved")
    public String reserve(@ModelAttribute Reservation dataReservation, Model model, RedirectAttributes redirectAttributes) {
        double price = dataReservation.getDeparture().getPrice();
        int seats = dataReservation.getDeparture().getAvailableSeats();
        int id = 0;
        if(seats - dataReservation.getNumberOfTickets() >= 0) {
            dataReservation.setPrice(dataReservation.isReturnTicket() ? price * 1.5 : price);
            dataReservation.setTotalPrice(dataReservation.getPrice() * dataReservation.getNumberOfTickets());
            this.reservationService.save(dataReservation);
            id = dataReservation.getId();
            dataReservation.getDeparture().setAvailableSeats(seats - dataReservation.getNumberOfTickets());
            this.departureService.save(dataReservation.getDeparture());
            redirectAttributes.addFlashAttribute("message", "Successfully reserved!");
        } else {
            redirectAttributes.addFlashAttribute("message", "There is no enough available seats");
            return "redirect:reservation/" + dataReservation.getDeparture().getId();
        }
        return "redirect:reserved/" + id;
    }

    @GetMapping("/reserved/{id}")
    public String showTicket(@PathVariable int id, Model model) {
        model.addAttribute("reservation", reservationService.getById(id));
        if(model.containsAttribute("message")) {
            model.addAttribute("message", model.asMap().get("message"));
        }
        return "ticket";
    }

    @GetMapping("/companies/{id}")
    @ResponseBody
    public List<Departure> getByCompany(@PathVariable int id) {
        return this.departureService.findByCompany(id);
    }
}
