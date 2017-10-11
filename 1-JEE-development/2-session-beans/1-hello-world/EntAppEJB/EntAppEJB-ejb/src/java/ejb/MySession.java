/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb;

import javax.ejb.Stateless;

/**
 *
 * @author jorgesanzperez
 */
@Stateless
public class MySession implements MySessionRemote {

    public void diHola(String nombre) {
        System.out.println("Hola" + nombre);
    }

}
