package jspbook.ch14;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class LogTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String msg = "Hello Log!!";
		Logger logger = LoggerFactory.getLogger(LogTest.class);
		logger.info("test log");
		logger.warn("test log : {}",msg);
	}

}
