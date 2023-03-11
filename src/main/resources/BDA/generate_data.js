const fetch = require("node-fetch");
const API_TOKEN = "9044ef000e4c3b84a01bfbbab6a17904";

start(5);

function start(n) {

    let tables = ["client", "director_2", "movie_2", "product", "cart"];

    for (let table in tables) {
        console.log("truncate table " + tables[table] + " cascade;\n");
    }

    console.log("SELECT addClient('Feub', 'Feub01', 'fabien.chenal@u-psud.fr');\n"
        + "SELECT addClient('Ouerdia', 'Ouerdia01', 'ouerdia.ait-ader@u-psud.fr');\n"
        + "SELECT addClient('Edouard', 'Edouard01', 'edouard.n15@u-psud.fr');\n"
        + "SELECT addClient('Martin', 'Martin01', 'martin.bidaut@u-psud.fr');\n");

    for (let i = 1; i <= n; i++) {
        getMovies(i);
    }
}

function getMovies(i) {
    var movieLis = {};
    var URL_movies = "https://api.themoviedb.org/3/movie/top_rated?api_key=" + API_TOKEN + "&language=fr-FR&page=" + i;

    fetch(URL_movies).then(function (res) {
        if (res.ok) {
            return res.json();
        }
    }).then(async function (movieList) {

        for (let film in movieList['results']) {

            let idMovie = movieList['results'][film]['id'];
            let title = movieList['results'][film]['title'];
            let release_date = movieList['results'][film]['release_date'];

            movieLis[idMovie] = {title, release_date};

            getDirector(idMovie);
            getInfo(idMovie);

        }

        for (let movie in movieLis) {
            console.log("select addMovie("+movie+",'"+movieLis[movie]['title'].replace(/'/g, " ")+"', to_date('"+movieLis[movie]['release_date'] +"', 'YYYY-MM-DD'));\n");
        }

        ///On refait ca pour etre sure que generate product s'affiche apres la creation des films
        for (let movie in movieLis) {
            generateProduct(movie);
        }

    }).catch(function (err) {
        console.log(err);
    });

    return true;
}

function getDirector(idFilm) {
    var URL_credits = "https://api.themoviedb.org/3/movie/" + idFilm + "/credits?api_key=" + API_TOKEN + "&language=fr-FR";

    fetch(URL_credits).then(function (cred) {
        if (cred.ok) {
            return cred.json();
        }
    }).then(function (crew) {
        for (let member in crew["crew"]) {
            if (crew["crew"][member]["job"] === "Director") {

                let sql_crew = "select addDirector(" + idFilm + "," + crew["crew"][member]["id"] + ",'" + crew["crew"][member]["name"].replace(/'/g, " ") + "');\n";

                console.log(sql_crew);
            }
        }
    }).catch(function (err) {
        console.log(err);
    });

    return true;
}

function getInfo(idFilm) {
    var URL_info = "https://api.themoviedb.org/3/movie/" + idFilm + "?api_key=" + API_TOKEN + "&language=fr-FR";

    fetch(URL_info).then(function (info) {
        if (info.ok) {
            return info.json();
        }
    }).then(function (info) {

            let runtime = info["runtime"];
            let original_language = info["original_language"];
            let poster_path = info["poster_path"];
            let overview = info["overview"];

            let sql_info = "select addDetails(" + idFilm + "," + runtime + ",'" + original_language + "','" + poster_path + "', '" + overview.replace(/'/g, " ") + "');\n";

            console.log(sql_info);
        }
    ).catch(function (err) {
        console.log(err);
    });

    return true;
}

function generateProduct(idFilm) {
    let type = getAlea(1, 5);

    if (type > 1) {
        let alea = 0;

        //COMBO "CB"
        if (type == 2) {
            alea = getAlea(0, 10);
            console.log("select addProduct(" + idFilm + ",'CB',29.99," + alea + ");\n");
        } else {

            //DVD "DVD"
            if (type == 3 || type == 5) {
                alea = getAlea(0, 10);
                console.log("select addProduct(" + idFilm + ",'DVD',9.99," + alea + ");\n");
            }

            //BLU-RAY "BR"
            if (type == 4 || type == 5) {
                alea = getAlea(0, 10);
                console.log("select addProduct(" + idFilm + ",'BR',14.99," + alea + ");\n");
            }
        }
    }
}

function getAlea(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
}
