package greeting.api.controller;

import greeting.api.entity.Greeting;
import greeting.api.service.GreetingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/greetings")
public class GreetingController {
    private final GreetingService greetingService;

    @Autowired
    public GreetingController(GreetingService greetingService) {
        this.greetingService = greetingService;
        System.out.println("GreetingController created");
    }

    @GetMapping
    public List<Greeting> getAllGreetings() {
        System.out.println("Getting all greetings");
        return greetingService.findAll();
    }

    @GetMapping("/{id}")
    public ResponseEntity<Greeting> findById(@PathVariable(value = "id") int greetingId) {
        System.out.println("Getting greeting by id: " + greetingId);
        Greeting g = greetingService.findById(greetingId);
        if(g == null) return ResponseEntity.notFound().build();
        return ResponseEntity.ok().body(g);
    }
}
