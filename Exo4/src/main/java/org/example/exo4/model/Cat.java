package org.example.exo4.model;

public class Cat {

    private String name;
    private String race;
    private String food;
private String birthDate;

    public Cat(String name, String race, String food, String birthDate) {
        this.name = name;
        this.race = race;
        this.food = food;
        this.birthDate = birthDate;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getRace() {
        return race;
    }

    public void setRace(String race) {
        this.race = race;
    }

    public String getFood() {
        return food;
    }

    public void setFood(String food) {
        this.food = food;
    }

    public String getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(String birthDate) {
        this.birthDate = birthDate;
    }
}
