package com.example.smartcity.handler;

import com.example.smartcity.model.AccessoLogin;
import com.example.smartcity.model.UsersBean;

public abstract class Handler {
    private Handler next;
    public Handler setNextHandler(Handler next){
        this.next = next;
        return  next;
    }

    public Handler getNext() {
        return next;
    }

    public abstract AccessoLogin handle(String email,String password);

    protected AccessoLogin handlerNext(String email,String password){
        if(this.next == null){
            return AccessoLogin.SUCCESSO;
        }
        return next.handle(email,password);
    }

}