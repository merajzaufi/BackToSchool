package com.sch.springmvc.backtoschool.validations;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import org.hibernate.query.criteria.internal.expression.function.UpperFunction;
import org.passay.*;
import org.passay.dictionary.WordListDictionary;
import org.passay.dictionary.WordLists;
import org.passay.dictionary.sort.ArraysSort;

import com.sch.springmvc.backtoschool.model.User;

import static java.util.Collections.singletonList;
import static java.util.stream.Collectors.joining;


import java.io.FileReader;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class PasswordConstraintValidator implements ConstraintValidator<ValidPassword, String>{
	
	@Override
    public void initialize(ValidPassword arg0) {
    }

	@Override
	public boolean isValid(String password, final ConstraintValidatorContext context) {
		
		 final PasswordValidator validator = new PasswordValidator(singletonList(
		            new LengthRule(8, 30)
		            
		            // More rules can be added to increase security
		        ));

		        final RuleResult result = validator.validate(new PasswordData(password));
		       
					
		        if (result.isValid()) {
		            return true;
		        }

		        context.disableDefaultConstraintViolation();
		        context.buildConstraintViolationWithTemplate(
		            validator.getMessages(result).stream().collect(joining("\n"))
		        ).addConstraintViolation();

		        return false;
		    }
	}
	


