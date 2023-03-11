package miage.ter.trefle.model;

/**
 * Une classe « conteneur »
 * Il faut en créer une pour chaque valeur de BD que l'on veut renvoyer
 * hors du modèle.
 * 
 * Les objets de cette classe sont « read-only » : ils servent juste de conteneur.
 * On ne peut pas les modifier car il représente une valeur de BD à modifier avec
 * un update.
 * 
 * Pour chaque attribut t, il faut une méthodes *publique* getT() qui renvoie
 * sa valeur. Le framework JSP s'attend a trouver de telles méthodes.
 */

 public class Point {
    private final int x;
    private final int y;

    public Point(int x, int y)  {
        this.x = x;
        this.y = y;
    }

    public int getX() { return x; }
    
    public int getY() { return y; }
}
