package com.kh.spring.board.model.exception;

public class BoardException extends RuntimeException {

	public BoardException() {
		super();
	}

	public BoardException(String arg0, Throwable arg1) {
		super(arg0, arg1);
	}

	public BoardException(String arg0) {
		super(arg0);
	}

	public BoardException(Throwable arg0) {
		super(arg0);
	}

	
}
