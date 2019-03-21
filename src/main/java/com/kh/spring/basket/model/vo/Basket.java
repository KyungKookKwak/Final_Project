package com.kh.spring.basket.model.vo;

import java.io.Serializable;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Basket implements Serializable {

	private static final long serialVersionUID = 1L;
	private int seqBasketNo;
	private int seqProductNo;
	private int seqMemberNo;
	
}
