package com.fpoly.entitys;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@Entity
@Table(name="Reviews")
public class Review implements Serializable{

	 	@Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    @Column(name = "ReviewID")
	    private int reviewId;

	    @Column(name = "Rating")
	    private int rating;

	    @Column(name = "ReviewText", columnDefinition = "nvarchar(200)")
	    private String reviewText;

	    @Column(name = "ReviewDate")
	    @Temporal(TemporalType.DATE)
	    private Date reviewDate =new Date();;
	    
	    @ManyToOne
	    @JoinColumn(name = "ProductID")
	    private Product product;
	    
	    @ManyToOne
	    @JoinColumn(name = "CustomerID")
	    private Customer customer;

		
	    
	    
	
}
