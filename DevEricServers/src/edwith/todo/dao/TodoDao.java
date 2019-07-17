package edwith.todo.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import common.BuildedSqlMapConfig;
import edwith.todo.dto.TodoDto;

public class TodoDao {
	private static TodoDao dao = new TodoDao();
	private SqlMapClient smc = BuildedSqlMapConfig.getInstance();
	private TodoDao(){};
	public static TodoDao getInstance(){
		return dao;
	}
	
	public void addTodo(TodoDto todoDto){
		try {
			smc.insert("todo.addTodo",todoDto);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public List<TodoDto> getTodos(){
		List<TodoDto> todoList = null;
		try {
			todoList = smc.queryForList("todo.getTodos");
			return todoList;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		
		
		
	}
	public void updateTodo(Long id){
		try {
			smc.update("todo.todoUpdate",id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}
