package co.grandcircus.HotelSearch.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="hotelListing")
public class Hotel {

	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="hotelId")
	private Long id;
	@Column(name="hotelName")
	private String name;
	private String city;
	private Integer pricePerNight;
	private Double rating;
	private String map;
	
	public Hotel() {
		super();
	}



	public Hotel(Long id, String name, String city, Integer pricePerNight, Double rating, String map) {
		super();
		this.id = id;
		this.name = name;
		this.city = city;
		this.pricePerNight = pricePerNight;
		this.rating = rating;
		this.map = map;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public Integer getPricePerNight() {
		return pricePerNight;
	}

	public void setPricePerNight(Integer pricePerNight) {
		this.pricePerNight = pricePerNight;
	}
	
	public Double getRating() {
		return rating;
	}

	public void setRating(Double rating) {
		this.rating = rating;
	}

	public String getMap() {
		return map;
	}

	public void setMap(String map) {
		this.map = map;
	}

	@Override
	public String toString() {
		return "Hotel [id=" + id + ", name=" + name + ", city=" + city + ", pricePerNight=" + pricePerNight
				+ ", rating=" + rating + "]";
	}	
	
}
