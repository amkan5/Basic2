package repository;

import java.util.List;

import domain.ExamBean;
import domain.MemberBean;

public class MemberDAOImpl implements MemberDAO {
	private static MemberDAO instance = new MemberDAOImpl();
	public static MemberDAO getInstance() {
		return instance;
	}
	private MemberDAOImpl() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public void insertMember(MemberBean member) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateMember(MemberBean member) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void dropMember(MemberBean member) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<MemberBean> selectAll(MemberBean Member) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberBean selectOne(MemberBean Member) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int countMember() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<MemberBean> selectSome(String word) {
		// TODO Auto-generated method stub
		return null;
	}

}
