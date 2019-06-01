package na.smyczy.app;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalEntityManagerFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import javax.persistence.EntityManagerFactory;





    @Configuration
    @EnableWebMvc
    @ComponentScan(basePackages = "na.smyczy")
    @EnableTransactionManagement
    public class AppConfig implements WebMvcConfigurer {

        @Bean
        public LocalEntityManagerFactoryBean entityManagerFactory() {
            LocalEntityManagerFactoryBean emfb = new LocalEntityManagerFactoryBean();
            emfb.setPersistenceUnitName("persistence");
            return emfb;
        }

        @Bean
        public JpaTransactionManager transactionManager(EntityManagerFactory emf) {
            JpaTransactionManager tm = new JpaTransactionManager(emf);
            return tm;
        }

        @Bean
        public ViewResolver viewResolver() {
            InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
            viewResolver.setPrefix("/WEB-INF/views/");
            viewResolver.setSuffix(".jsp");
            return viewResolver;
        }

        @Override
        public void addResourceHandlers(ResourceHandlerRegistry registry) {
            registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
            registry.addResourceHandler("/webjars/**").addResourceLocations("classpath:/META-INF/resources/webjars/");
        }

    }

