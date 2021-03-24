package com.mycompany.webapp.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mycompany.webapp.dto.Board;
import com.mycompany.webapp.dto.Pager;

@Repository
public class BoardsDao {
	@Autowired
	private SqlSessionTemplate sst;
	
	public List<Board> selectAll(){
		List<Board> list = sst.selectList("boards.selectAll");
	       return list;		
	}
	
	public int insert(Board board) {
		int rows = sst.insert("boards.insert", board);
		return rows;
	}

	public Board selectByBno(int bno) {
		   Board board = sst.selectOne("boards.selectByBno",bno);
		   return board;
		}
	public void updateBhitcount(int bno) {
		  int hit= sst.update("boards.updateBhitcount", bno);
		 
		}
	public int update(Board board) {
		// TODO Auto-generated method stub
		int rows = sst.update("boards.update",board);
		return rows;
	}

	public void delete(int bno) {
		// TODO Auto-generated method stub
		sst.delete("boards.delete",bno);
	}

	public int count() {
		int rows = sst.selectOne("boards.count");
		return rows;
	}

	public List<Board> selectByPage(Pager pager) {
		List<Board> list = sst.selectList("boards.selectByPage", pager);
		return list;
	}

}