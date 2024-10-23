package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dbconnection.Dbconnection;

public class Dao {
	Connection con =null;
	PreparedStatement ps = null;
	Dbconnection d = new Dbconnection();
	ResultSet rs = null;
public Dao() {
	// TODO Auto-generated constructor stub
}

public void register(String username, String email, String phone, String gender, String address, String password) {

	con = d.myConnection();
	try {
		ps = con.prepareStatement("insert into users (username,email,phone,gender,address,password) values(?,?,?,?,?,?)");
		ps.setString(1, username);
		ps.setString(2, email);
		ps.setString(3, phone);
		ps.setString(4, gender);
		ps.setString(5, address);
		ps.setString(6, password);
		ps.execute();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	finally {
		try {
			ps.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

public int checkIfOwner(String email, String password) {
	// TODO Auto-generated method stub
	con = d.myConnection();
	
	try {
		ps = con.prepareStatement("select * from admin where email=? and password=?");
		ps.setString(1, email);
		ps.setString(2, password);
		rs = ps.executeQuery();
		if(rs.next()) {
			
			return rs.getInt("id");
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	finally {
		try {
			ps.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	return 0;
}

public int checkIfUser(String email, String password) {
con = d.myConnection();
	
	try {
		ps = con.prepareStatement("select * from users where email=? and password=?");
		ps.setString(1, email);
		ps.setString(2, password);
		rs = ps.executeQuery();
		if(rs.next()) {
			
			return rs.getInt("id");
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	finally {
		try {
			ps.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	return 0;
}

public void addbooks(String bname, String aname, String quantity, String description, String price) {
	// TODO Auto-generated method stub
	con = d.myConnection();
	try {
		ps = con.prepareStatement("insert into books (bname,aname,quantity,description,price) values(?,?,?,?,?)");
		ps.setString(1,bname );
		ps.setString(2, aname);
		ps.setString(3, quantity);
		ps.setString(4, description);
		ps.setString(5, price);
		ps.execute();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	finally {
		try {
			ps.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

public void updatebook(String bname, String aname, int quantity, String description, int id) {
	// TODO Auto-generated method stub
	con = d.myConnection();
	try {
		ps = con.prepareStatement("update books set bname=?,aname=?,quantity=?,description=? where id=?");
		ps.setString(1,bname );
		ps.setString(2, aname);
		ps.setInt(3, quantity);
		ps.setString(4, description);
		ps.setInt(5, id);
		ps.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	finally {
		try {
			ps.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

public void delete(int id) {
	// TODO Auto-generated method stub
	con = d.myConnection();
	try {
		ps = con.prepareStatement("delete from books where id=?");
		ps.setInt(1,id);
		ps.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	finally {
		try {
			ps.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

public void savebooks(int uid, int id, String quantity, String price) {

	reducequantity(id,quantity);
	
	con = d.myConnection();
	try {
		ps = con.prepareStatement("insert into orders(uid,bid,quantity,totalprice) values(?,?,?,?)");
		ps.setInt(1,uid );
		ps.setInt(2, id);
		ps.setString(3, quantity);
		ps.setString(4, price);
		ps.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	finally {
		try {
			ps.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}

private void reducequantity(int id, String quantity) {
	con = d.myConnection();
	try {
		ps = con.prepareStatement("update books set quantity=quantity-? where id=?");
		ps.setString(1, quantity);
		ps.setInt(2, id);
		ps.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	finally {
		try {
			ps.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}

}
