package com.kh.spring.item.model.service;
import com.kh.spring.member.model.vo.Member;
import com.kh.spring.thing.model.vo.Product;

public interface ItemService {

	Product selectOneProduct(int num);

	Member selectJoinMember(int sellerNo);

}
