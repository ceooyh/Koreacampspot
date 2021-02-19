package kcs.mapper;

import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import kcs.dto.MemberDTO;

@Mapper
public interface MemberMapper {

	MemberDTO login(HashMap<String, Object> map);

}
