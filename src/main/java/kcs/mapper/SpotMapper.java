package kcs.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface SpotMapper {

	// 캠핑장 별점 평균
	double getStarAvg(int contentId);
 
	// 캠핑장 리뷰 개수
	int getReviewCount(int contentId);

}
