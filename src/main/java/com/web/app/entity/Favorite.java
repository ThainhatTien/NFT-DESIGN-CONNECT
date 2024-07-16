package com.web.app.entity;

import java.util.Date;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
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
@Table(name = "Favorites")
public class Favorite {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int favorite_id;
    private int nft_id;
    private int user_id;
    @Temporal(TemporalType.TIMESTAMP)
    private Date created_at;
    
    @ManyToOne
    @JoinColumn(name = "nft_id", referencedColumnName = "nft_id", insertable = false, updatable = false)
    private NFT nft;
    
    @ManyToOne
    @JoinColumn(name = "user_id", referencedColumnName = "user_id", insertable = false, updatable = false)
    private User user;
}
