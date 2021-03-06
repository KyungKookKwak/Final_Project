package com.kh.spring.customercenter.model.service;

import java.util.List;

import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.spring.board.model.exception.BoardException;
import com.kh.spring.board.model.vo.Attachment;
import com.kh.spring.customercenter.model.dao.CustomerDao;
import com.kh.spring.customercenter.model.vo.Board;
import com.kh.spring.customercenter.model.vo.Question;
import com.kh.spring.member.model.vo.Member;

@Service
public class CustomerServiceImpl implements CustomerService {

	Logger logger = Logger.getLogger(getClass());

	@Autowired
	CustomerDao customerDao;

	@Override
	public List<Map<String, String>> selectNewsList(int cPage, int numPerPage) {
		return customerDao.selectNewsList(cPage, numPerPage);
	}

	@Override
	public int countNewsList() {
		return customerDao.countNewsList();
	}

	@Override
	public int insertNews(Board board) {
		return customerDao.insertNews(board);
	}

	@Override
	public int updateNews(Board board) {
		return customerDao.updateNews(board);
	}

	@Override
	public int deleteNews(Board board) {
		return customerDao.deleteNews(board);
	}

	@Override
	public List<Map<String, String>> selectQnaList(int cPage, int numPerPage) {
		return customerDao.selectQnaList(cPage, numPerPage);
	}

	@Override
	public List<Map<String, String>> selectSearchList(int cPage, int numPerPage, String searchkeyword) {
		return customerDao.selectSearchList(cPage, numPerPage, searchkeyword);
	}

	@Override
	public int countQnaList(String searchkeyword) {
		return customerDao.countQnaList(searchkeyword);
	}

	@Override
	public List<Board> selectMainList() {
		return customerDao.selectMainList();
	}

	@Override
	public Board selectQnaMain(Board board) {
		return customerDao.selectQnaMain(board);
	}

	@Override
	public List<Map<String, String>> selectTutorialList(int cPage, int numPerPage) {
		return customerDao.selectTutorialList(cPage, numPerPage);
	}

	@Override
	public int countTutorialList() {
		return customerDao.countTutorialList();
	}

	@Override
	public List<Map<String, String>> selectbuyTutorialList(int cPage, int numPerPage) {
		return customerDao.selectbuyTutorialList(cPage, numPerPage);
	}

	@Override
	public int countbuyTutorialList() {
		return customerDao.countbuyTutorialList();
	}

	@Override
	public List<Map<String, String>> selectsellTutorialList(int cPage, int numPerPage) {
		return customerDao.selectsellTutorialList(cPage, numPerPage);
	}

	@Override
	public int countsellTutorialList() {
		return customerDao.countsellTutorialList();
	}

	@Override
	public int insertQna(Board board) {
		return customerDao.insertQna(board);
	}

	@Override
	public int updateQna(Board board) {
		return customerDao.updateQna(board);
	}

	@Override
	public int deleteQna(Board board) {
		return customerDao.deleteQna(board);
	}

	@Override
	public int insertInquiry(Question q) {
		return customerDao.insertInquiry(q);
	}

	@Override
	public List<Map<String, String>> selectinquiryList(Question q) {
		return customerDao.selectinquiryList(q);
	}

	@Override
	public int insertAnswer(Question q) {
		return customerDao.insertAnswer(q);
	}

	@Override
	public int updateAnswer(Question q) {
		return customerDao.updateAnswer(q);
	}

}
