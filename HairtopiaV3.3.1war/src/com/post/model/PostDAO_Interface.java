package com.post.model;

import java.util.List;

public interface PostDAO_Interface {
	public void insert(PostVO postVo);
    public void update(PostVO postVo);
    public void delete(Integer postNo);
    public PostVO findByPrimaryKey(Integer postNo);
    public List<PostVO> getAll(Integer desNo);
    public List<PostVO> getAll();
    //萬用複合查詢(傳入參數型態Map)(回傳 List)
//  public List<EmpVO> getAll(Map<String, String[]> map);
	public void insert2(PostVO postVO);
	public void insert3(PostVO postVO);
	public void update2(PostVO postVo);
	public void update3(PostVO postVo);
	public void update4(PostVO postVo);// for 檢舉隱藏貼文
}
