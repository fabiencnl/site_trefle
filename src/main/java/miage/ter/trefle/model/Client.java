package miage.ter.trefle.model;

public class Client {
    private final String pseudo;
    private final String mail;

    public Client(String pseudo, String mail) {
        this.pseudo = pseudo;
        this.mail = mail;
    }
    public String getPseudo() {return pseudo;}
    public  String getMail() {return mail;}
}
