package com.javakurs.kursovaya.service;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

/**
 * Created by QuantumCat on 05.05.2017.
 */
public class ServiceHost {

    public static String getUrl(String secondPart)
    {
        FileInputStream fis=null;
        Properties property = new Properties();
        String host=null;

        try {
            fis = new FileInputStream(System.getProperty("user.dir")+"/src/main/resources/service.properties");
            property.load(fis);

            host = property.getProperty("service.url");

        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return null;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
        return host+secondPart;
    }

}
