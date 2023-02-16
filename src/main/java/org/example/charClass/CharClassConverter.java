package org.example.charClass;

import org.example.perks.Perks;
import org.example.perks.PerksRepository;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;


@Component
public class CharClassConverter implements Converter<String, CharClass> {

    private final CharClassRepository charClassRepository;

    public CharClassConverter(CharClassRepository charClassRepository) {
        this.charClassRepository = charClassRepository;
    }

    @Override
    public CharClass convert(String source) {
        return charClassRepository.findById(Long.parseLong(source)).orElse(null);
    }
}
