package com.kh.spring.mypage.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.spring.member.model.vo.Member;
import com.kh.spring.mypage.model.dao.MyPageDao;
import com.kh.spring.thing.model.vo.ProductIo;

@Service
public class MyPageServiceImpl implements MyPageService {

	@Autowired
	MyPageDao myPageDao;

	@Override
	public int updatephone(Member m) {
		return myPageDao.updatephone(m);
	}

	@Override
	public int updateemail(Member m) {
		return myPageDao.updateemail(m);
	}

	@Override
	public List<Map<String, Object>> sellList(int cPage, int numPerPage, int seqMemberNo) {
		List<Map<String, Object>> list = myPageDao.sellList(seqMemberNo, cPage, numPerPage);
		return list;
	}

	@Override
	public List<Map<String, Object>> sellList2(int cPage, int numPerPage, int seqMemberNo) {
		List<Map<String, Object>> list = myPageDao.sellList2(seqMemberNo, cPage, numPerPage);
		return list;
	}

	@Override
	public int countproduct(int seqMemberNo) {
		return myPageDao.countproduct(seqMemberNo);
	}

	public int countproduct2(int seqMemberNo) {
		return myPageDao.countproduct2(seqMemberNo);
	}

	@Override
	public List<Map<String, Object>> sellList3(int cPage, int numPerPage, int seqMemberNo) {
		List<Map<String, Object>> list = myPageDao.sellList3(seqMemberNo, cPage, numPerPage);
		return list;
	}

	@Override
	public int countproduct3(int seqMemberNo) {
		return myPageDao.countproduct3(seqMemberNo);
	}

	@Override
	public List<Map<String, Object>> buyList(int cPage, int numPerPage, int seqMemberNo) {
		List<Map<String, Object>> list = myPageDao.buyList(cPage, numPerPage, seqMemberNo);
		return list;
	}

	@Override
	public int countbuy(int seqMemberNo) {
		return myPageDao.countbuy(seqMemberNo);
	}

	@Override
	public List<Map<String, Object>> abuyList(int cPage, int numPerPage, int seqMemberNo) {
		List<Map<String, Object>> list = myPageDao.abuyList(cPage, numPerPage, seqMemberNo);
		return list;
	}

	@Override
	public int acountbuy(int seqMemberNo) {
		return myPageDao.acountbuy(seqMemberNo);
	}

	@Override
	public int updateaddress(Member m) {
		return myPageDao.updateaddress(m);
	}

	@Override
	public List<Map<String, Object>> coupons(int memberNo) {
		return myPageDao.coupons(memberNo);
	}
}
