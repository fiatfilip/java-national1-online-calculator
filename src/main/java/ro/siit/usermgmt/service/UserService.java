package ro.siit.usermgmt.service;

import ro.siit.usermgmt.model.User;

import java.util.ArrayList;
import java.util.List;

public class UserService {
    private List<User> users = new ArrayList<>();
    private static UserService instance;

    public static UserService getInstance(){
        if(instance == null){
            instance = new UserService();
        }
        return instance;
    }

    private UserService(){
        users.add(new User("filip", "filip123"));
    }

    public User authenticateUser(String username, String password){
        for(User user: users){
            if(user.getUsername().equals(username)
                && user.getPassword().equals(password)){
                return user;
            }
        }
        return null;
    }
}
