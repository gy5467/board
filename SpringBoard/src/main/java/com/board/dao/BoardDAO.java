package com.board.dao;

import java.util.List;

import com.board.domain.BoardVO;

public interface BoardDAO {
	
	// 게시판 목록
	public List<BoardVO> list() throws Exception;
	
	// 게시판 작성
	public void write(BoardVO vo) throws Exception;
	
	// 게시판 조회
	public BoardVO view(int bno) throws Exception;
	
	// 게시판 수정
	public void modify(BoardVO vo) throws Exception;
	
	// 게시판 삭제
	public void delete(int bno) throws Exception;
	
	// 게시판 총 갯수
	public int count() throws Exception;
	
	// 게시판 목록 + 페이징
	public List<BoardVO> listPage(int displayPost, int postNum) throws Exception;
}
