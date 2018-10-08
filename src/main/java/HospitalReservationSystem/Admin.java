/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package HospitalReservationSystem;
import HospitalReservationSystem.User;
/**
 *
 * @author Jesse
 */
public class Admin {
    public Admin(){}
    public boolean usersLoigin(User u){
        return "jujs2010@163.com".equals(u.getEmail())&&"123123".equals(u.getPassword());
    }
}
