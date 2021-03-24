package com.mycompany.webapp.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.BoardsDao;
import com.mycompany.webapp.dto.Board;
import com.mycompany.webapp.dto.Pager;

@Service
public class BoardsService {
	@Autowired
	BoardsDao boardsDao;
	public List<Board> getBoardList(){
		List<Board> list = boardsDao.selectAll();
	       return list;
	}
	public void saveBoard(Board board) {
		int rows = boardsDao.insert(board);
	}
	public Board getBoard(int bno) {
		// TODO Auto-generated method stub
		Board board = boardsDao.selectByBno(bno);
		return board;
	}
	public void updateBoard(Board board) {
		// TODO Auto-generated method stub
		boardsDao.update(board);
		
	}
	public void deleteBoard(int bno) {
		// TODO Auto-generated method stub
		boardsDao.delete(bno);
	}
	public void addHitcount(int bno)
	{
		boardsDao.updateBhitcount(bno);
		
	}
	public int getTotalRows() {
		// TODO Auto-generated method stub
		int rows = boardsDao.count();
		return rows;
	}
	public List<Board> getBoardList(Pager pager){
		List<Board> list = boardsDao.selectByPage(pager);
	       return list;
	}
}
