package tk.db;

import java.util.*;
import java.sql.*;

import org.apache.commons.dbutils.*;
import org.apache.commons.dbutils.handlers.*;

public class DBUnits {

	public ArrayList getQuery1(String strsql) {
		QueryRunner qr = new QueryRunner();
		ResultSetHandler rsh = new MapListHandler();
		ArrayList result = null;
		try {
			result = (ArrayList) qr.query(getConnection(), strsql, rsh);
		} catch (Exception ex) {
			ex.printStackTrace(System.out);
		}
		return result;
	}

	public void testUpdate(String strsql) {
		try {
			QueryRunner qr = new QueryRunner();
			ResultSetHandler rsh = new ArrayListHandler();
			qr.update(getConnection(), strsql);
			// System.out.print("");
		} catch (Exception ex) {
			ex.printStackTrace(System.out);
		}
	}

	public Connection getConnection() throws InstantiationException,
			IllegalAccessException, ClassNotFoundException, SQLException {

		String strDriver = "org.sqlite.JDBC";
		DbUrlConf dburl = new DbUrlConf();
		String strUrl = dburl.getDbUrlConf();

		Class.forName(strDriver).newInstance();
		return DriverManager.getConnection(strUrl);
	}

}