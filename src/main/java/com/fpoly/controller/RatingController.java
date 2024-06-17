package com.fpoly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.fpoly.entitys.Review;
@Controller
@RestController
public class RatingController {

    @PostMapping("/submitRating")
    public String submitRating(@RequestParam String rating, Review review) {
        System.out.println("Selected Rating: " + rating);
        
        return "trangchitiet";
    }
}
