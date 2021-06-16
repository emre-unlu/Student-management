package emre.student.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import emre.student.api.Student;
import emre.student.dao.StudentDAO;

@Service
public class StudentServiceImpl implements StudentService {
	
	
	@Autowired
	StudentDAO studentDao;

	@Override
	public List<Student> loadStudents() {
		
		List<Student> studentList = studentDao.loadStudents();
		
		return studentList;
	}

	@Override
	public void saveStudent(Student student) {
		
		if(student.getCountry().equalsIgnoreCase("UK")) {
			
			//Logic to send email 
			System.out.printf("Email sent to : %s\n" , student.getName());
		}
		
		if(student.getId() !=  0) 
			studentDao.updateStudent(student);
			
		else 
		    studentDao.saveStudent(student);
		

	}

	@Override
	public Student findById(int id) {
		
		
		return studentDao.findById(id);
	}

	@Override
	public int updateStudent(Student student) {
		
		return studentDao.updateStudent(student);
	}

	@Override
	public void deleteStudent(int id) {
		
		studentDao.deleteStudent(id);
	}
	
	

}
