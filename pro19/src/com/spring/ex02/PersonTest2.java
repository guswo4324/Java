package com.spring.ex02;

import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.FileSystemResource;

public class PersonTest2 {

    public static void main(String[] args) {
        XmlBeanFactory factory = new XmlBeanFactory(new FileSystemResource("person2.xml"));
        
        PersonService person1 = (PersonService) factory.getBean("personService1");
        person1.sayHello();
        System.out.println();

        PersonService person2 = (PersonService) factory.getBean("personService2");
        person2.sayHello();

    }

}