package com.board.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.board.domain.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO{
	
	@Inject
	private SqlSession sql;
	
	private static String namespace = "com.board.mappers.board";
	
	// 게시판 목록
	@Override
	public List<BoardVO> list() throws Exception{
		return sql.selectList(namespace + ".list");
	}
	
	// 게시판 작성
	@Override
	public void write(BoardVO vo) throws Exception{
		sql.insert(namespace + ".write", vo);
	}
	
	// 게시판 조회
	@Override
	public BoardVO view(int bno) throws Exception{
		return sql.selectOne(namespace + ".view", bno);
	}
	
	// 게시판 수정
	public void modify(BoardVO vo) throws Exception{
		sql.update(namespace + ".modify", vo);
	}
	
	// 게시판 삭제
	public void delete(int bno) throws Exception{
		sql.delete(namespace + ".delete", bno);
	}

}
