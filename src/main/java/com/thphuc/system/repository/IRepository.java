package com.thphuc.system.repository;

import java.util.List;

public interface IRepository<T> {
    public List<T> getAll();
    public T get(int id);
    public void insert(T t);
    public void update(T t);
    public void delete(int id);
}
