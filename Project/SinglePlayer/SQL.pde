MySQL db;
final String user = "root";
final String pass = "";
final String database = "game";
String username = "";
int coin = 0;
int status = 0;
int HighScore = 0;
int increment = 0;
int plane = 1;

void connectSQL() {
  db = new MySQL( this, "localhost", database, user, pass );
  db.connect();
  db.query("SELECT * FROM loginreg");
  while (db.next()) {
    username = db.getString("u_username");
    coin = db.getInt("u_coins");
    status = db.getInt("loged");
    if (status == 1) {
      break;
    }
  }
  db.query("SELECT * FROM loginreg");
  while (db.next()) {
    increment = db.getInt("u_highscore");
    if (increment > HighScore) {
      HighScore = increment;
    }
  }
  db.query("SELECT plane FROM loginreg WHERE u_username = '"+username+"'");
  plane = db.getInt("plane");
}
