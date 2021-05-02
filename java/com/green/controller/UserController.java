package com.green.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.green.service.UserService;
import com.green.vo.UserVO;

import lombok.Setter;

@Controller
@RequestMapping("/user/*")
public class UserController {
	
	@Setter(onMethod_= @Autowired)
	UserService service;
	
	@RequestMapping("/list")
	public String list(Model model) {
		model.addAttribute("list", service.list());
		return "/user/list";
	}

	@GetMapping("/person")
	public String read(int free_id, Model model) {
		model.addAttribute("user", service.read(free_id));
		return "/user/person";
	}
	@GetMapping("/modify")
	public void modify(int free_id, Model model) {
		System.out.println("여기 수정이 잘 들어오나 컨트롤러 get  "+free_id);
		model.addAttribute("user", service.read(free_id));	
	}
	@PostMapping("/modify")
	public String modify2(Model model, UserVO vo) {
		System.out.println("여기 수정이 잘 들어오나 컨트롤러  post" +vo);

		vo.setMoney_save(vo.getMoney_save()+vo.getInput_money()-vo.getOutput_money());
				
		if(vo.getMoney_save()>500.0) vo.setLoan_able("가능");
		else  vo.setLoan_able("불가능");

		service.update(vo);
		return "redirect:/user/list";
	}
	

}
