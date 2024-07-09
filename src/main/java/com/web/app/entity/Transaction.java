package com.web.app.entity;

import java.math.BigDecimal;
import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
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
@Table(name = "Transactions")
public class Transaction {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int transaction_id;
    private int nft_id;
    private int user_id;
    private BigDecimal price;
    private Date transaction_date;
    
    @ManyToOne
    @JoinColumn(name = "nft_id", referencedColumnName = "nft_id", insertable = false, updatable = false)
    private NFT nft;
    
    @ManyToOne
    @JoinColumn(name = "user_id", referencedColumnName = "user_id", insertable = false, updatable = false)
    private User user;
}
