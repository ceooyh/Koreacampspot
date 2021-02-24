package kcs.dto;

import org.apache.ibatis.type.Alias;

@Alias("spot")
public class SpotDTO {

	private int sno;
	private String id;
	private String sname;
	private String address1;
	private String address2;
	private String address3;
	private String tel1;
	private String tel2;
	private String tel3;
	private String stag;
	private String spot_link;
	private String content;
	private int autocamping;
	private int glamping;
	private int caravan;
	private int rent_tent;
	private int rent_equipment;
	private int pool;
	private int pet;
	private int fishing;
	private int experience;
	private int caravan_open;
	private int trailer_open;
	private int beach;
	private int island;
	private int mountain;
	private int forest;
	private int valley;
	private int river;
	private int lake;
	private int city;
	private int wifi;
	private int hot_water;
	private int shower;
	private int mart;
	private int toilet;
	private int electric;
	private int pet_open;
	private int status;
	
	private double star;
	private int review_count;
	public SpotDTO(int sno, String id, String sname, String address1, String address2, String address3, String tel1,
			String tel2, String tel3, String stag, String spot_link, String content, int autocamping, int glamping,
			int caravan, int rent_tent, int rent_equipment, int pool, int pet, int fishing, int experience,
			int caravan_open, int trailer_open, int beach, int island, int mountain, int forest, int valley, int river,
			int lake, int city, int wifi, int hot_water, int shower, int mart, int toilet, int electric, int pet_open,
			int status, double star, int review_count) {
		super();
		this.sno = sno;
		this.id = id;
		this.sname = sname;
		this.address1 = address1;
		this.address2 = address2;
		this.address3 = address3;
		this.tel1 = tel1;
		this.tel2 = tel2;
		this.tel3 = tel3;
		this.stag = stag;
		this.spot_link = spot_link;
		this.content = content;
		this.autocamping = autocamping;
		this.glamping = glamping;
		this.caravan = caravan;
		this.rent_tent = rent_tent;
		this.rent_equipment = rent_equipment;
		this.pool = pool;
		this.pet = pet;
		this.fishing = fishing;
		this.experience = experience;
		this.caravan_open = caravan_open;
		this.trailer_open = trailer_open;
		this.beach = beach;
		this.island = island;
		this.mountain = mountain;
		this.forest = forest;
		this.valley = valley;
		this.river = river;
		this.lake = lake;
		this.city = city;
		this.wifi = wifi;
		this.hot_water = hot_water;
		this.shower = shower;
		this.mart = mart;
		this.toilet = toilet;
		this.electric = electric;
		this.pet_open = pet_open;
		this.status = status;
		this.star = star;
		this.review_count = review_count;
	}
	public int getSno() {
		return sno;
	}
	public void setSno(int sno) {
		this.sno = sno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getAddress3() {
		return address3;
	}
	public void setAddress3(String address3) {
		this.address3 = address3;
	}
	public String getTel1() {
		return tel1;
	}
	public void setTel1(String tel1) {
		this.tel1 = tel1;
	}
	public String getTel2() {
		return tel2;
	}
	public void setTel2(String tel2) {
		this.tel2 = tel2;
	}
	public String getTel3() {
		return tel3;
	}
	public void setTel3(String tel3) {
		this.tel3 = tel3;
	}
	public String getStag() {
		return stag;
	}
	public void setStag(String stag) {
		this.stag = stag;
	}
	public String getSpot_link() {
		return spot_link;
	}
	public void setSpot_link(String spot_link) {
		this.spot_link = spot_link;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getAutocamping() {
		return autocamping;
	}
	public void setAutocamping(int autocamping) {
		this.autocamping = autocamping;
	}
	public int getGlamping() {
		return glamping;
	}
	public void setGlamping(int glamping) {
		this.glamping = glamping;
	}
	public int getCaravan() {
		return caravan;
	}
	public void setCaravan(int caravan) {
		this.caravan = caravan;
	}
	public int getRent_tent() {
		return rent_tent;
	}
	public void setRent_tent(int rent_tent) {
		this.rent_tent = rent_tent;
	}
	public int getRent_equipment() {
		return rent_equipment;
	}
	public void setRent_equipment(int rent_equipment) {
		this.rent_equipment = rent_equipment;
	}
	public int getPool() {
		return pool;
	}
	public void setPool(int pool) {
		this.pool = pool;
	}
	public int getPet() {
		return pet;
	}
	public void setPet(int pet) {
		this.pet = pet;
	}
	public int getFishing() {
		return fishing;
	}
	public void setFishing(int fishing) {
		this.fishing = fishing;
	}
	public int getExperience() {
		return experience;
	}
	public void setExperience(int experience) {
		this.experience = experience;
	}
	public int getCaravan_open() {
		return caravan_open;
	}
	public void setCaravan_open(int caravan_open) {
		this.caravan_open = caravan_open;
	}
	public int getTrailer_open() {
		return trailer_open;
	}
	public void setTrailer_open(int trailer_open) {
		this.trailer_open = trailer_open;
	}
	public int getBeach() {
		return beach;
	}
	public void setBeach(int beach) {
		this.beach = beach;
	}
	public int getIsland() {
		return island;
	}
	public void setIsland(int island) {
		this.island = island;
	}
	public int getMountain() {
		return mountain;
	}
	public void setMountain(int mountain) {
		this.mountain = mountain;
	}
	public int getForest() {
		return forest;
	}
	public void setForest(int forest) {
		this.forest = forest;
	}
	public int getValley() {
		return valley;
	}
	public void setValley(int valley) {
		this.valley = valley;
	}
	public int getRiver() {
		return river;
	}
	public void setRiver(int river) {
		this.river = river;
	}
	public int getLake() {
		return lake;
	}
	public void setLake(int lake) {
		this.lake = lake;
	}
	public int getCity() {
		return city;
	}
	public void setCity(int city) {
		this.city = city;
	}
	public int getWifi() {
		return wifi;
	}
	public void setWifi(int wifi) {
		this.wifi = wifi;
	}
	public int getHot_water() {
		return hot_water;
	}
	public void setHot_water(int hot_water) {
		this.hot_water = hot_water;
	}
	public int getShower() {
		return shower;
	}
	public void setShower(int shower) {
		this.shower = shower;
	}
	public int getMart() {
		return mart;
	}
	public void setMart(int mart) {
		this.mart = mart;
	}
	public int getToilet() {
		return toilet;
	}
	public void setToilet(int toilet) {
		this.toilet = toilet;
	}
	public int getElectric() {
		return electric;
	}
	public void setElectric(int electric) {
		this.electric = electric;
	}
	public int getPet_open() {
		return pet_open;
	}
	public void setPet_open(int pet_open) {
		this.pet_open = pet_open;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public double getStar() {
		return star;
	}
	public void setStar(double star) {
		this.star = star;
	}
	public int getReview_count() {
		return review_count;
	}
	public void setReview_count(int review_count) {
		this.review_count = review_count;
	}
	
	
}
