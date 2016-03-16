package utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

public class PDB {
	String url = "jdbc:mysql://localhost:3306/design";// ���ӷ�ʽ��λ�ã��˿ڣ���ݿ���
	String name = "cxy";
	String password = "cxy";
	private Connection conn;
	private ResultSet rs;
	private PreparedStatement pps;
	
	public PDB(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, name, password);// �������ӣ���ȡ����
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public int update(String sql,Object[] param){
		try {
			pps = conn.prepareStatement(sql);
			for(int i=0;param!=null && i<param.length;i++){
				if(param[i] instanceof File){
					File file = (File)param[i];
					FileInputStream input = new FileInputStream(file);
					pps.setBinaryStream(i+1,input,(int)file.length());
					System.out.println("file "+ (i+1)+" "+param[i].toString() );
				}else if(param[i] instanceof String){
					if(param[i]==null){
						param[i]="";
					}
					pps.setString(i+1, param[i].toString());
				}
			}
			return pps.executeUpdate();
		} catch (SQLException e1) {
			e1.printStackTrace();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		return -1;
	}
	public ArrayList<HashMap<String,Object>> query (String sql,String[] param){
		try {
			pps = conn.prepareStatement(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		for(int i=0;param!=null&&i<param.length;i++){
			try {
				pps.setString(i+1, param[i]);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		try {
			rs = pps.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		ArrayList<HashMap<String,Object>> list = new ArrayList<HashMap<String,Object>>() ;
		try {
			ResultSetMetaData mt = rs.getMetaData();
			String[] columns = new String[mt.getColumnCount()];
			for(int i=0;i<columns.length;i++){
				columns[i] = mt.getColumnName(i+1);
			}
			while(rs.next()){
				HashMap<String,Object> map = new HashMap<String,Object>();
				for(int i=0;i<columns.length;i++){
					int type = mt.getColumnType(i+1);//ȡ���е�����
					switch(type){
					case java.sql.Types.INTEGER :
						map.put(columns[i],rs.getInt(columns[i]));break;
					case java.sql.Types.VARCHAR :
						map.put(columns[i],rs.getString(columns[i]));break;
					case java.sql.Types.LONGNVARCHAR :
						map.put(columns[i],rs.getBlob(columns[i]));break;
					}
					
					
				
				
				}
				list.add(map);
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public static void main(String[] args){
//		PDB p = new PDB();
//		String sql = "select * from summerpeople where id=?";
//		String[] param = new String[]{"1"};
//		ArrayList<HashMap<String,String>> list = p.query(sql, param);
//		System.out.println(list.get(0));
	}
}
