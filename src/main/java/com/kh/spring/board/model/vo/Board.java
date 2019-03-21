package com.kh.spring.board.model.vo;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

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
	private int boardNo;
	private String boardTitle;
	private String boardWriter;
	private String boardContent;
	private Date boardDate;
	private int boardReadCount;
	private int fileCount; //첨부파일 갯수
	private List<Attachment> files;
	
}
