package controller;
import service.*;
import javax.swing.JOptionPane;
import domain.*;
public class MemberController {
	private static MemberController instance = new MemberController();
	public static MemberController getInstance() {
		return instance;
	}
	private MemberController() {
		// TODO Auto-generated constructor stub
	}
	
}
