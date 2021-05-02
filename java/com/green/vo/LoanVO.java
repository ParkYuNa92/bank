package com.green.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class LoanVO {
	 int custom_id;
	 String custom_name;
	 float loan_total;
	 float loan_output;
	 float loan_save;
}
