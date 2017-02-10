package com.hotdog.petcam.security;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target( value={ElementType.METHOD, ElementType.TYPE} )
@Retention( RetentionPolicy.RUNTIME )
public @interface Auth {
	String role() default "user";
}

