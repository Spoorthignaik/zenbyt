package com.zenbyt.examples.configuration;

import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class LiveTvWebInit extends AbstractAnnotationConfigDispatcherServletInitializer implements WebMvcConfigurer{
	
	public LiveTvWebInit() {
		System.out.println("Created " + this.getClass().getSimpleName());
	}

	@Override
	protected Class<?>[] getRootConfigClasses() {
		System.out.println("Running the getRootConfigClasses.......");
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		System.out.println("Running the getServletConfigClasses.......");
		return new Class[] { LiveTvConfiguration.class };
	}

	@Override
	protected String[] getServletMappings() {
		System.out.println("Running the getServletMappings.......");
		return new String[] { "/" };
	}

	@Override
	public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
		System.out.println("Running the configureDefaultServletHandling.......");
		configurer.enable();
	}


}
