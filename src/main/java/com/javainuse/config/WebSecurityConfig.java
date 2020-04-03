package com.javainuse.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

	
	  @Qualifier("userDetailsServiceImpl")
	    @Autowired
	    private UserDetailsService userDetailsService;

	    @Bean
	    public BCryptPasswordEncoder bCryptPasswordEncoder() {
	        return new BCryptPasswordEncoder();
	    }
	
	
    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/resources/**");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
    	
//    	
//    	
//        http.authorizeRequests().antMatchers("/").permitAll().antMatchers("/welcome")
//            .hasAnyRole("USER", "ADMIN").antMatchers("/getEmployees").hasAnyRole("USER", "ADMIN")
//            .antMatchers("/addNewEmployee").hasAnyRole("ADMIN").anyRequest().authenticated().and().formLogin()
//            .permitAll().and().logout().permitAll();
//
//        http.csrf().disable();
        
        http.authorizeRequests()
            .antMatchers("/resources/**", "/portal/registration","/", "/home/contact","/css/**","/images/**","/js/**","/AboutPageAssets/**","/portal/css/**,/portal/images/**").permitAll()
            .antMatchers("/portal/**").authenticated()
            .antMatchers("/home/contact").anonymous()
            .and()
        .formLogin()
            .loginPage("/portal/login")
            .defaultSuccessUrl("/portal/welcome", true)
            .permitAll()
            .and()
        .logout().logoutRequestMatcher(new AntPathRequestMatcher("/portal/logout")).logoutSuccessUrl("/portal/login");
           
    }

    @Bean
    public AuthenticationManager customAuthenticationManager() throws Exception {
        return authenticationManager();
    }

    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService).passwordEncoder(bCryptPasswordEncoder());
    }
    
//    @Autowired
//    public void configureGlobal(AuthenticationManagerBuilder authenticationMgr) throws Exception {
//        authenticationMgr.inMemoryAuthentication().withUser("player").password("employee")
//            .authorities("ROLE_USER").and().withUser("javainuse").password("javainuse")
//            .authorities("ROLE_USER", "ROLE_ADMIN");
//        
//       
//        
//    }

}