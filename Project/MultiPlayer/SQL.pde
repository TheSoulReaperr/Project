MySQL db;
final String user = "root";
final String pass = "";
final String database = "game";
String username = "";
int status = 0;
int plane = 2;

void connectSQL() {
  db = new MySQL( this, "localhost", database, user, pass );
  db.connect();
  db.query("SELECT * FROM loginreg");
  while (db.next()) {
    username = db.getString("u_username");
    status = db.getInt("loged");
    if(status == 1) {
      break;
    }
  }
  db.query("SELECT plane FROM loginreg WHERE u_username = '"+username+"'");
  plane = db.getInt("plane");
}
