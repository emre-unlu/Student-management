package emre.student.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import emre.student.api.Student;
import emre.student.dao.StudentDAO;
import emre.student.dao.StudentDAOImpl;
import emre.student.service.StudentService;

@Controller
public class StudentController {

	@Autowired
	private StudentService studentService;
	
	@GetMapping(value="/showStudent" )
	public String showStudentList(Model model) {
		
		List<Student> studentList = studentService.loadStudents();
		
		System.out.println(studentList);
		model.addAttribute("students",studentList);
		
		return "student-list";
	}
	
	@GetMapping(value="/showAddStudentPage" )
	public String addStudent(Model model) {
		
		model.addAttribute("student",new Student());
		
		return "add-student";
	}
	
	

	@PostMapping(value="/save-student" )
	public String saveStudent(Student student) {
		
		studentService.saveStudent(student);
		
		System.out.println(student);
		
		return "redirect:/showStudent";
	}

	@GetMapping(value="/updateStudent" )
	public String updateStudent(@RequestParam("id") int id , Model model ) {
		
		Student student = studentService.findById(id);
		
		model.addAttribute("student" , student);
		
		
		return "add-student";
	}
	
	@GetMapping(value = "/deleteStudent")
	public String deleteStudent(@RequestParam("id") int id) {
		
		
		studentService.deleteStudent(id);
		
		return "redirect:/showStudent";
		
	}
	
	@GetMapping(value="/showAboutPage")
	public String aboutPage() {
		return "about-page";
	}
	
	
	
	
}
