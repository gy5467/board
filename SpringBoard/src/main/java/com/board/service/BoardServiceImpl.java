package com.board.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.board.dao.BoardDAO;
import com.board.domain.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardDAO dao;
	
	// 게시판 목록
	@Override
	public List<BoardVO> list() throws Exception {
		return dao.list();
	}
	
	// 게시판 작성
	@Override
	public void write(BoardVO vo) throws Exception{
		dao.write(vo);
	}
	
	// 게시판 조회
	@Override
	public BoardVO view(int bno) throws Exception{
		return dao.view(bno);
	}
	
	// 게시판 수정
	public void modify(BoardVO vo) throws Exception{
		dao.modify(vo);
	}
	
	// 게시판 삭제
	public void delete(int bno) throws Exception{
		dao.delete(bno);
	}

}
