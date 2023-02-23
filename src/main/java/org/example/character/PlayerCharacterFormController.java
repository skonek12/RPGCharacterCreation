package org.example.character;

import com.google.gson.Gson;
import org.example.charAttributes.CharAttributes;
import org.example.charAttributes.CharAttributesRepository;
import org.example.charClass.CharClass;
import org.example.charClass.CharClassRepository;
import org.example.charSkills.CharSkillsRepository;
import org.example.perks.Perks;
import org.example.perks.PerksRepository;
import org.example.race.RaceRepository;
import org.example.race.Race;

import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;


import javax.validation.Valid;
import java.util.List;
import java.util.Optional;

@Controller
public class PlayerCharacterFormController {
    private final PlayerCharacterRepository playerCharacterRepository;
    private final CharAttributesRepository charAttributesRepository;
    private final CharSkillsRepository charSkillsRepository;
    private final PerksRepository perksRepository;
    private final RaceRepository raceRepository;
    private final CharClassRepository charClassRepository;


    public PlayerCharacterFormController(PlayerCharacterRepository playerCharacterRepository, CharAttributesRepository charAttributesRepository, CharSkillsRepository charSkillsRepository, PerksRepository perksRepository, RaceRepository raceRepository, CharClassRepository charClassRepository) {
        this.playerCharacterRepository = playerCharacterRepository;
        this.charAttributesRepository = charAttributesRepository;
        this.charSkillsRepository = charSkillsRepository;
        this.perksRepository = perksRepository;
        this.raceRepository = raceRepository;
        this.charClassRepository = charClassRepository;
    }

    @GetMapping("/character/new")
    public String newCharacter(Model model) {
        PlayerCharacter playerCharacter = new PlayerCharacter();
        model.addAttribute("playerCharacter", playerCharacter);
        return "/character/new";
    }


    @PostMapping("/character/new")
    public String saveCharacter(@Valid PlayerCharacter playerCharacter, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "/character/new";
        }
        playerCharacterRepository.save(playerCharacter);
        return "redirect:/character/list";
    }

    @GetMapping("/character/list")
    public String listCharacters(Model model) {
        List<PlayerCharacter> playerCharacters = playerCharacterRepository.findAll();
        model.addAttribute("playerCharacters", playerCharacters);
        return "/character/list";
    }

    @GetMapping("/character/edit/{id}")
    public String editCharacter(Model model, @PathVariable long id) {
        Optional<PlayerCharacter> playerCharacter = playerCharacterRepository.findById(id);
        if (playerCharacter.isPresent()) {
            model.addAttribute("playerCharacter", playerCharacter);
            return "/character/edit";
        } else {
            return "redirect:/character/list";
        }
    }

    @PostMapping("/character/edit")
    public String updateCharacter(@Valid PlayerCharacter playerCharacter, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "/character/edit";
        }
        playerCharacterRepository.save(playerCharacter);
        return "redirect:/character/list";
    }


    @GetMapping("/character/delete/{id}")
    public String deleteCharacterForm(Model model, @PathVariable long id) {
        model.addAttribute("id", id);
        return "/character/delete";
    }


    @PostMapping("/character/delete/{id}")
    public String deleteCharacter(@PathVariable long id) {
        playerCharacterRepository.deleteById(id);
        return "redirect:/character/list";
    }

    @ModelAttribute("racesJson")
    public String racesJson() {
        Gson gson = new Gson();
        List<Race> races =  raceRepository.findAll();
        String json = gson.toJson(races);
        return json;
    }
    @ModelAttribute("classJson")
    public String classJson() {
        Gson gson = new Gson();
        List<CharClass> classes =  charClassRepository.findAll();
        String json = gson.toJson(classes);
        return json;
    }
    @ModelAttribute("perksJson")
    public String perksJson() {
        Gson gson = new Gson();
        List<Perks> perks =  perksRepository.findAll();
        String json = gson.toJson(perks);
        return json;
    }
    @ModelAttribute("races")
    public List<Race> races() {
        return raceRepository.findAll();
    }


    @ModelAttribute("classes")
    public List<CharClass> classes() {
        return charClassRepository.findAll();
    }

    @ModelAttribute("perks")
    public List<Perks> perks() {
        return perksRepository.findAll();
    }


}