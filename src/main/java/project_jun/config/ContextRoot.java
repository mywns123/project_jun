package project_jun.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

@Configuration
@Import({ContextDataSource.class, ContextSqlSession.class, MvcConfig.class})
@ComponentScan(basePackages = {
		"project_jun.mapper",
		"project_jun.controller",
		"project_jun.service"})
public class ContextRoot {

}
