package com.kh.spring.item.model.dao;

import java.util.List;
import java.util.Map;

import com.kh.spring.member.model.vo.Member;
import com.kh.spring.thing.model.vo.Product;
import com.kh.spring.thing.model.vo.Regist;

public interface ItemDao {

	Product selectOneProduct(int num);

	Member selectJoinMember(int sellerNo);

	void updateProduct(Map<String, String> map);

	List<Product> searchItem(String searchKeyword);

	List<Map<String, String>> searchItemAjax(String myData);

	List<Regist> selectAllRegist();

	List<Product> selectNew();

	List<Product> selectNowProduct(Map<String, String> map);

	List<Product> selectUpItems();

	List<Product> selectItr(List<String> itrArrList);

	String selectMemberInterest(int memberNo);

	List<Map<String, Object>> couponList(String buyerNo);


}
