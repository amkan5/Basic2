package repository;
import java.util.List;

import domain.ExamBean;
import domain.MemberBean;
public interface MemberDAO {
	public void insertMember(MemberBean member);
	public List<MemberBean> selectAll(MemberBean Member);
	public List<MemberBean> selectSome(String word);
	public MemberBean selectOne(MemberBean Member);
	public int countMember();
	public void updateMember(MemberBean member);
	public void dropMember(MemberBean member);
}
