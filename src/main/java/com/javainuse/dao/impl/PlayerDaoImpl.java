//package com.javainuse.dao.impl;
//
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.util.ArrayList;
//import java.util.List;
//import java.util.Map;
//
//import javax.annotation.PostConstruct;
//import javax.sql.DataSource;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.jdbc.core.BatchPreparedStatementSetter;
//import org.springframework.jdbc.core.RowMapper;
//import org.springframework.jdbc.core.support.JdbcDaoSupport;
//import org.springframework.stereotype.Repository;
//
//import com.javainuse.dao.EmployeeDao;
//import com.javainuse.dao.PlayerDao;
//import com.javainuse.model.Employee;
//import com.javainuse.model.Player;
//
//@Repository
//public class PlayerDaoImpl extends JdbcDaoSupport implements PlayerDao{
//	
//	@Autowired 
//	DataSource dataSource;
//	
//	@PostConstruct
//	private void initialize(){
//		setDataSource(dataSource);
//	}
//	
//
//	@Override
//	public void insertPlayer(Employee emp) {
//		// TODO Auto-generated method stub
//		String sql = "INSERT INTO employee " +
//				"(empId, empName) VALUES (?, ?)" ;
//		getJdbcTemplate().update(sql, new Object[]{
//				emp.getEmpId(), emp.getEmpName()
//		});
//	}
//
//	@Override
//	public void insertPlayers(List<Player> players) {
//		String sql = "INSERT INTO employee " + "(empId, empName) VALUES (?, ?)";
//		getJdbcTemplate().batchUpdate(sql, new BatchPreparedStatementSetter() {
//			public void setValues(PreparedStatement ps, int i) throws SQLException {
//				Player player = players.get(i);
//				ps.setInt(1, player.getPlayerId());
//				ps.setString(2, player.getPlayerName());
//				ps.setString(3, player.getPhoneNumber());
//				ps.setInt(4, player.getAge());
//			}
//			
//			public int getBatchSize() {
//				return players.size();
//			}
//		});
//	}
//
//	@Override
//	public List<Player> getAllPlayers() {
//		String sql = "SELECT * FROM players";
//		List<Map<String, Object>> rows = getJdbcTemplate().queryForList(sql);
//		
//		List<Player> result = new ArrayList<Player>();
//		for(Map<String, Object> row:rows){
//			Player player = new Player();
//			player.setplayerId((int)row.get("idPlayers"));
//			player.setplayerName((String)row.get("name"));
//			player.setPhoneNumber((String)row.get("phoneNumber"));
//			player.setAge((int)row.get("age"));
//			result.add(player);
//		}
//		
//		return result;
//	}
//
//
//	@Override
//	public void getPlayerById(int playerid) {
//		// TODO Auto-generated method stub
//		
//	}
//
////	@Override
////	public void getPlayerById(int playerid) {
////		// TODO Auto-generated method stub
////		String sql = "SELECT * FROM employee WHERE empId = ?";
////		return (Employee)getJdbcTemplate().queryForObject(sql, new Object[]{empId}, new RowMapper<Employee>(){
////			@Override
////			public Employee mapRow(ResultSet rs, int rwNumber) throws SQLException {
////				Employee emp = new Employee();
////				emp.setEmpId(rs.getString("empId"));
////				emp.setEmpName(rs.getString("empName"));
////				return emp;
////			}
////		});
////	}
//}