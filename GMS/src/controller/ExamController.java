package controller;
import java.util.List;

import javax.swing.JOptionPane;
import domain.*;
import service.ExamServiceImpl;
import service.MemberServiceImpl;
public class ExamController {
	private static ExamController instance = new ExamController();
	public static ExamController getInstance() {
		return instance;
	}
	private ExamController() {
	}
	public static void main(String[] args) {
		while(true) {
			ExamBean exam = null;
			MemberBean mem = null;
			switch(JOptionPane.showInputDialog("0.EXIT 1.TEST")) {
			case "1" :
					exam = new ExamBean();
					mem = new MemberBean();
					String[] arr = JOptionPane.showInputDialog("이름/월").split("/");
					exam.setMonth(arr[1]);
					List<MemberBean> list = MemberServiceImpl.getInstance().selectSome(
							 arr[0]
							 );
					if(list.size()==0) {
						System.out.println("해당 이름의 학생이 없어요");
					}else if(list.size()==1) {
						exam.setMemId(list.get(0).getMemId());
					}else {
						System.out.println(list);
					}
					
					/*exam.setMemId(
							 MemberServiceImpl.getInstance().selectSome(
									 arr[0]
									 ).get(0).getMemId()
							 );
					exam.setMonth(JOptionPane.showInputDialog("month")); */
					
				break;
			case "2" : 
				exam.setScore(JOptionPane.showInputDialog("java,sql,r,html,python"));		
			/*test용	exam = new ExamBean();
				exam.setMemId("a");
				exam.setMonth("7");
				exam.setScore("90,80,70,60,50");*/
				ExamServiceImpl.getInstance().createExam(exam);
				break;
			default : return;
			};
		 
		}
		}
	public void marks() {
		
	}

	}
