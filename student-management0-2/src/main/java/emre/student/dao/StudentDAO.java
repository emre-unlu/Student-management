package emre.student.dao;

import java.util.List;

import emre.student.api.Student;

public interface StudentDAO {

	
	

	public List<Student> loadStudents();
	public void saveStudent(Student student);
	public Student findById (int id);
	public int updateStudent(Student student);
	public void deleteStudent(int id);

	
}
