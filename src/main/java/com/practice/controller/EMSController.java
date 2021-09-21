package com.practice.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.practice.model.Commands;
import com.practice.model.Department;
import com.practice.model.Employee;
import com.practice.model.Regulation;
import com.practice.repository.commandsDao;
import com.practice.repository.departmentDao;
import com.practice.repository.employeeDao;
import com.practice.repository.regulationDao;

@Controller
public class EMSController {
	
	@Autowired
	private employeeDao empdao;
	
	@Autowired
	private departmentDao deptdao;
	
	@Autowired
	private regulationDao regdao;

	@Autowired
	private commandsDao cmddao;
	
	@RequestMapping("/")
	public String login()
	{
		return "home";
	}
	@PostMapping("login")
	public ModelAndView home(@RequestParam("name")String name,@RequestParam("password")String password)
	{
		if(name.equals("admin") && password.equals("123"))
		{
			
			List<Employee> emplist=empdao.displayall();
			List<Department> deptlist=deptdao.showdept();
			List<Regulation> reglist=regdao.showReg();
			
			ModelAndView mv=new ModelAndView();
			mv.addObject("emplist",emplist);
			mv.addObject("deptlist",deptlist);
			mv.addObject("reglist",reglist);
			mv.setViewName("page1");
			return mv;

		}
		else if(name.equals("user") && password.equals("123"))
		{
			List<Employee> emplist=empdao.displayall();
			List<Department> deptlist=deptdao.showdept();
			List<Regulation> reglist=regdao.showReg();
			ModelAndView mv=new ModelAndView();
			mv.addObject("emplist",emplist);
			mv.addObject("deptlist",deptlist);
			mv.addObject("reglist",reglist);
			
			mv.setViewName("userpage");
			return mv;
		}
		else {

			ModelAndView mv=new ModelAndView();
			mv.setViewName("page1");
			return mv;
		}
		
	}
	@GetMapping("login")
	public ModelAndView home()
	{
		List<Employee> emplist=empdao.displayall();
		List<Department> deptlist=deptdao.showdept();
		List<Regulation> reglist=regdao.showReg();
		
		ModelAndView mv=new ModelAndView();
		mv.addObject("emplist",emplist);
		mv.addObject("deptlist",deptlist);
		mv.addObject("reglist",reglist);
		mv.setViewName("page1");
		return mv;
	}
	@GetMapping("userpage")
	public ModelAndView userpage()
	{
		List<Employee> emplist=empdao.displayall();
		List<Department> deptlist=deptdao.showdept();
		List<Regulation> reglist=regdao.showReg();
		ModelAndView mv=new ModelAndView();
		mv.addObject("emplist",emplist);
		mv.addObject("deptlist",deptlist);
		mv.addObject("reglist",reglist);
		
		mv.setViewName("userpage");
		return mv;
	}
	@PostMapping("addemp")
	public ModelAndView addemp(Employee emp)
	{
		empdao.save(emp);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("addemp");
		return mv;
	}
	@GetMapping("addemp")
	public ModelAndView addemp()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("addemp");
		return mv;
	}
	@GetMapping("adddept")
	public String showdept()
	{
		return "adddept";
	}
	@PostMapping("adddept")
	public String adddept(Department dept)
	{
		deptdao.save(dept);
		
		return "adddept";
	}
	@GetMapping("addreg")
	public String showreg()
	{
		
		return "addreg";
	}
	@PostMapping("addreg")
	public String addreg(Regulation reg)
	{
		regdao.save(reg);
		
		return "addreg";
	}
	@GetMapping("/emppage")
	public ModelAndView emppage()
	{
		List<Employee> emplist=empdao.displayall();
		ModelAndView mv=new ModelAndView();
		mv.addObject("emplist",emplist);
		mv.setViewName("emppage");
		return mv;
	}
	@GetMapping("/deptpage")
	public ModelAndView deptpage()
	{
		List<Department> deptlist=deptdao.showdept();
		ModelAndView mv=new ModelAndView();
		mv.addObject("deptlist",deptlist);
		mv.setViewName("deptpage");
		return mv;
	}
	@GetMapping("/regpage")
	public ModelAndView regpage()
	{
		List<Regulation> reglist=regdao.showReg();
		ModelAndView mv=new ModelAndView();
		mv.addObject("reglist",reglist);
		mv.setViewName("regpage");
		return mv;
	}
//	----------------------------------------------edit -------------------------------------------
	@PostMapping("/idedit")
	public ModelAndView idedit(@RequestParam("edit")int editid)
	{
		List<Employee> editemplist=empdao.updateid(editid);
		ModelAndView mv=new ModelAndView();
		mv.addObject("editemplist",editemplist);
		mv.setViewName("editemp");
		return mv;
	}
	@PostMapping("/ideditdept")
	public ModelAndView ideditdept(@RequestParam("edit")int editid)
	{
		List<Department> editdeptlist=deptdao.updateid(editid);
		ModelAndView mv=new ModelAndView();
		mv.addObject("editdeptlist",editdeptlist);
		mv.setViewName("editdept");
		return mv;
	}
	@PostMapping("/ideditreg")
	public ModelAndView ideditreg(@RequestParam("edit")int editid)
	{
		List<Regulation> editreglist=regdao.updateid(editid);
		ModelAndView mv=new ModelAndView();
		mv.addObject("editreglist",editreglist);
		mv.setViewName("editreg");
		return mv;
	}
//	------------------------ update ----------------------
	@PostMapping("/empupdate")
	public ModelAndView updateemp(Employee emp)
	{
		empdao.save(emp);
		List<Employee> emplist=empdao.displayall();
		ModelAndView mv=new ModelAndView();
		mv.addObject("emplist",emplist);
		mv.setViewName("emppage");
		return mv;
	}
	@PostMapping("/deptupdate")
	public ModelAndView updatedept(Department dept)
	{
		deptdao.save(dept);
		List<Department> deptlist=deptdao.showdept();
		ModelAndView mv=new ModelAndView();
		mv.addObject("deptlist",deptlist);
		mv.setViewName("deptpage");
		return mv;
	}
	@PostMapping("/regupdate")
	public ModelAndView updatereg(Regulation reg)
	{
		regdao.save(reg);
		List<Regulation> reglist=regdao.showReg();
		ModelAndView mv=new ModelAndView();
		mv.addObject("reglist",reglist);
		mv.setViewName("regpage");
		return mv;
	}
	
//	------------------------------------------delete ---------------------------------------------------
	@PostMapping("/iddelete")
	public ModelAndView deleteemp(@RequestParam("delete")int id)
	{
		empdao.deleteById(id);
		List<Employee> emplist=empdao.displayall();
		ModelAndView mv=new ModelAndView();
		mv.addObject("emplist",emplist);
		mv.setViewName("emppage");
		return mv;
	}
	@PostMapping("/iddeletedept")
	public ModelAndView deletedept(@RequestParam("delete")int id)
	{
		deptdao.deleteById(id);
		List<Department> deptlist=deptdao.showdept();
		ModelAndView mv=new ModelAndView();
		mv.addObject("deptlist",deptlist);
		mv.setViewName("deptpage");
		return mv;
	}
	@PostMapping("/iddeletereg")
	public ModelAndView deletereg(@RequestParam("delete")int id)
	{
		regdao.deleteById(id);
		List<Regulation> reglist=regdao.showReg();
		ModelAndView mv=new ModelAndView();
		mv.addObject("reglist",reglist);
		mv.setViewName("regpage");
		return mv;
	}
//	-------------------------------------------------------------------user page ----------------------------------------------------
	
	@PostMapping("/showreg")
	public ModelAndView usershowreg(@RequestParam("deptId") int deptId)
	{
		List<Regulation> reglist=regdao.updateid(deptId);
		ModelAndView mv=new ModelAndView();
		mv.addObject("reglist",reglist);
		mv.setViewName("showreg");
		return mv;
	}
	
	
	@PostMapping("/sendmsg")
	public ModelAndView sendmsg(Commands cmd)
	{
		cmddao.save(cmd);
		List<Employee> emplist=empdao.displayall();
		List<Department> deptlist=deptdao.showdept();
		List<Regulation> reglist=regdao.showReg();
		ModelAndView mv=new ModelAndView();
		mv.addObject("emplist",emplist);
		mv.addObject("deptlist",deptlist);
		mv.addObject("reglist",reglist);
		
		mv.setViewName("userpage");
		return mv;
	}
	

}
