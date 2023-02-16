package org.example;


import org.example.charAttributes.CharAttributes;
import org.example.charAttributes.CharAttributesRepository;
import org.example.charClass.CharClass;
import org.example.charClass.CharClassRepository;
import org.example.charClass.CharClassConverter;
import org.example.charSkills.CharSkills;
import org.example.charSkills.CharSkillsRepository;
import org.example.character.PlayerCharacterRepository;
import org.example.perks.PerksConverter;
import org.example.perks.PerksRepository;
import org.example.race.RaceConverter;
import org.example.race.RaceRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.format.FormatterRegistry;
import org.springframework.http.MediaType;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalEntityManagerFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import javax.persistence.EntityManagerFactory;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.List;



@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "org.example")
@EnableTransactionManagement
@EnableJpaRepositories(basePackages = "org.example")
public class AppConfig implements WebMvcConfigurer {
    @Autowired
    private RaceRepository raceRepository;
    @Autowired
    private CharAttributesRepository charAttributesRepository;
    @Autowired
    private CharClassRepository charClassRepository;
    @Autowired
    private CharSkillsRepository charSkillsRepository;
    @Autowired
    private PerksRepository perksRepository;

    @Bean
    public ViewResolver viewResolver() {
        InternalResourceViewResolver viewResolver =
                new InternalResourceViewResolver();
        viewResolver.setPrefix("/WEB-INF/views/");
        viewResolver.setSuffix(".jsp");
        return viewResolver;
    }

    @Override
    public void configureDefaultServletHandling(
            DefaultServletHandlerConfigurer configurer) {
        configurer.enable();
    }

    @Override
    public void configureMessageConverters(List<HttpMessageConverter<?>> converters) {
        StringHttpMessageConverter stringConverter = new StringHttpMessageConverter();
        stringConverter.setSupportedMediaTypes(Arrays.asList(new MediaType("text", "plain",
                Charset.forName("UTF-8"))));
        converters.add(stringConverter);
    }


    @Bean
    public LocalEntityManagerFactoryBean entityManagerFactory() {
        LocalEntityManagerFactoryBean emfb = new LocalEntityManagerFactoryBean();
        emfb.setPersistenceUnitName("rpgCharacterCreatorPersistenceUnit");
        return emfb;
    }

    @Bean
    public JpaTransactionManager transactionManager(EntityManagerFactory emf) {
        return new JpaTransactionManager(emf);
    }

    @Bean
    public RaceConverter raceConverter() {
        return new RaceConverter(raceRepository);
    }
    @Bean
    public PerksConverter perksConverter() {
        return new PerksConverter(perksRepository);
    }
    @Bean
    public CharClassConverter charClassConverter() {
        return new CharClassConverter(charClassRepository);
    }
    @Override
    public void addFormatters(FormatterRegistry registry) {
        registry.addConverter(raceConverter());
        registry.addConverter(perksConverter());
        registry.addConverter(charClassConverter());
    }
}
