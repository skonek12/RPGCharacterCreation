package org.example.perks;

import org.example.perks.Perks;
import org.example.perks.PerksRepository;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;


@Component
public class PerksConverter implements Converter<String, Perks> {

    private final PerksRepository perksRepository;

    public PerksConverter(PerksRepository perksRepository) {
        this.perksRepository = perksRepository;
    }

    @Override
    public Perks convert(String source) {
        return perksRepository.findById(Long.parseLong(source)).orElse(null);
    }
}
