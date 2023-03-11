package miage.ter.trefle.model;

public class Movie {
    private final int id;
    private final String idDirector;
    private final String title;
    private final int year;
    private final int duration;

    public Movie(int id,
                 String idDirector,
                 String title,
                 int year,
                 int duration)  {
        this.id = id;
        this.idDirector = idDirector;
        this.title = title;
        this.year = year;
        this.duration = duration;
    }

    public int getId() {
        return id;
    }

    public String getIdDirector() {
        return idDirector;
    }

    public String getTitle() {
        return title;
    }
    public int getYear() {
        return year;
    }
    public int getDuration() {
        return duration;
    }
}
