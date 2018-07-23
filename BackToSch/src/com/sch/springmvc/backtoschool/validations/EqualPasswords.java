package com.sch.springmvc.backtoschool.validations;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.ConstraintValidator;
import javax.validation.Payload;



@Constraint(validatedBy = EqualPasswordsValidator.class)
@Target({ ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
public @interface EqualPasswords  {
	 String message() default "password is not matching";
	    Class<?>[] groups() default {};
	    Class<? extends Payload>[] payload() default {};

}
