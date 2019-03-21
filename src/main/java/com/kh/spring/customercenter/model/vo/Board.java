package com.kh.spring.customercenter.model.vo;

import java.io.Serializable;
import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class Board implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int seq_board_no;
	private String boardtitle;
	private String boardcontent;
	private Date boarddate;
	private String boardwriter;
	private String boardkinds;
	private int board_readcount;
	private int seq_member_no;
	
	
	
}
