package emre.student.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import emre.student.api.Student;

@Repository
public class StudentDAOImpl implements StudentDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate ;
	
	//Load Student method
	@Override
	public List<Student> loadStudents() {
		
		
		
		 List<Student> studentList = jdbcTemplate.query("SELECT * FROM students", new StudentRowMapper());
		 
		
		 return studentList;
	}

	//Save student method
	@Override
	public void saveStudent(Student student) {
		
		Object[] sqlParameters = {student.getName(),student.getNumber(),student.getCountry()};
		String sql = "insert into students(name,number,country) values(?,?,?)";
		
		jdbcTemplate.update(sql,sqlParameters);
		
		
	}

	//Find student by given id
	@Override
	public Student findById(int id) {
		
		String sql = "select * from students where id=? ";
		Object[] object = {id}; 
		
		return jdbcTemplate.queryForObject(sql, object , new StudentRowMapper());
	}
    
	//Update student method
	@Override
	public int updateStudent(Student student) {
		
		String sql = "update students " + " set name = ?,  number = ?,  country = ? " + " where id = ?";
		Object[] object  = {student.getName() , student.getNumber() , student.getCountry() , student.getId() };		
		
		return jdbcTemplate.update(sql , object);
	}

	@Override
	public void deleteStudent(int id) {
		
		String sql = "DELETE FROM students WHERE id = ?";
		jdbcTemplate.update(sql,id);
				
		
	}

}
