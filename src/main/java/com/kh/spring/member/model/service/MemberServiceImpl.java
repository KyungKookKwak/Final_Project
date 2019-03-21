package com.kh.spring.member.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.kh.spring.member.model.dao.MemberDao;
import com.kh.spring.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDao memberDao;
	
	@Override
	public int insertMember(Member m) {
		return memberDao.insertMember(m);
	}

	@Override
	public Member selectOneMember(String memberId) {
		return memberDao.selectOneMember(memberId);
	}

	@Override
	public int memberUpdate(Member temp) {
		return memberDao.memberUpdate(temp);
	}

	@Override
	public List<Map<String, String>> selectAllCategory() {
		return memberDao.selectAllCategory();
	}
	
	@Override
	public int insertFacebookMember(Member m) {
		return memberDao.insertFaceBookMember(m);
	}

	@Override
	public Member selectOneFBMember(String fbIdcheck) {
		return memberDao.selectOneFBMember(fbIdcheck);
	}

	@Override
	public Member selectOnekakaoMember(String kIdcheck) {
		return memberDao.selectOnekakaoMember(kIdcheck);
	}

	@Override
	public int insertKakaoMember(Member m) {
		return memberDao.insertKakaoMember(m);
	}

	@Override
	public int insertgoogleMember(Member m) {
		return memberDao.insertgoogleMember(m);
	}

	@Override
	public Member selectOnegoogleMember(String gIdcheck) {
		return memberDao.selectOnegoogleMember(gIdcheck);
	}

	@Override
	public String selectmemberId(String memberEmail){
		return memberDao.selectmemberId(memberEmail);
	}

	@Override
	public int countmember(Member m) {
		return memberDao.countmember(m);
	}

	@Override
	public int updatePwd(Member m) {
		return memberDao.updatePwd(m);
	}

	@Override
	public int countmemberId(Member m) {
		return memberDao.countmemberId(m);
	}

	@Override
	public int updateItr(Map<String, String> map) {
		return memberDao.updateItr(map);
	}

}
