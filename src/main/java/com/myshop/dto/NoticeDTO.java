package com.myshop.dto;

import lombok.Data;

@Data
public class NoticeDTO {
	int no;
	String title;
	String content;
	String author;
	String resdate;
	int visited;
	
}
