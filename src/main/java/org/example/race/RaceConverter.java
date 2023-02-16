package org.example.race;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;


    @Component
    public class RaceConverter implements Converter<String, Race> {

        private final RaceRepository raceRepository;

        public RaceConverter(RaceRepository raceRepository) {
            this.raceRepository = raceRepository;
        }

        @Override
        public Race convert(String source) {
            return raceRepository.findById(Long.parseLong(source)).orElse(null);
        }
    }
