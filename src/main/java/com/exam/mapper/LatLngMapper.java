package com.exam.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import com.exam.domain.LatLngVO;

public interface LatLngMapper {
	
	public int insertLatLng(LatLngVO latLngVO);
	
	public int updateLatLng(LatLngVO latLngVO);
	
	public int removeLatLng();
	
	@Select("SELECT * FROM lat_lng")
	public List<LatLngVO> getLatLngAll();
	
	@Select("SELECT COUNT(*) FROM lat_lng WHERE unum=#{unum}")
	public int countLatLngByUnum(int unum);
	
	@Delete("DELETE FROM lat_lng WHERE unum=#{unum}")
	public void deleteLatLngByUnum(int unum);
}
