package miage.ter.trefle.model;

public class Director {
    private final int id;
    private final String name;
    private final String lastName;

    public Director(int id,
                String name,
                String lastName)  {
        this.id = id;
        this.name = name;
        this.lastName = lastName;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getLastName() {
        return lastName;
    }
}
