package com.web.app.entity;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Data
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "NFTs")
public class NFT {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int nft_id;
	private String name;
	private int designer_id;
	private int category_id;
	private int specifications_id;
	private int style_id;
	private BigDecimal price;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Temporal(TemporalType.DATE)
	private Date created_at;
    private String description;
	private String images;
	
	public List<String> getImageList() {
        return images != null ? Arrays.asList(images.split(",")) : new ArrayList<>();
    }

    public void setImageList(List<String> imageList) {
        this.images = String.join(",", imageList);
    }
	
	@ManyToOne
	@JoinColumn(name = "designer_id", referencedColumnName = "user_id", insertable = false, updatable = false)
	private User designer;

	@ManyToOne
	@JoinColumn(name = "category_id", referencedColumnName = "category_id", insertable = false, updatable = false)
	private Category category;

	@ManyToOne
	@JoinColumn(name = "specifications_id", referencedColumnName = "specifications_id", insertable = false, updatable = false)
	private Specifications specifications;

	@ManyToOne
	@JoinColumn(name = "style_id", referencedColumnName = "style_id", insertable = false, updatable = false)
	private Style style;
}
