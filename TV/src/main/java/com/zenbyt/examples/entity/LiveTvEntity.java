package com.zenbyt.examples.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="live_details")
public class LiveTvEntity {
	
	@Id
	@Column(name="l_id")
	private int id;
	@Column(name="l_name")
	private String name;
	@Column(name="l_email")
	private String email;
	@Column(name="l_password")
	private String password;
	@Column(name = "s_reenterpas")
	private String reenterpas;
	@Column(name="l_phoneNums")
	private Long phoneNums;
	@Override
	public String toString() {
		return "LiveTvEntity [id=" + id + ", name=" + name + ", email=" + email + ", password=" + password
				+ ", reenterpas=" + reenterpas + ", phoneNums=" + phoneNums + "]";
	}
	
	
	
	
}
