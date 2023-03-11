package miage.ter.trefle.model;

public class User {
    private final int id;
    private final String pseudo;
    private final String email;
    private final String password;

    public User(int id,
                   String pseudo,
                   String email,
                   String password)  {
        this.id = id;
        this.pseudo = pseudo;
        this.email = email;
        this.password = password;
    }

    public int getId() {
        return id;
    }

    public String getPseudo() {
        return pseudo;
    }

    public String getEmail() {
        return email; }

    public String getPassword() {
        return password;
    }
}
