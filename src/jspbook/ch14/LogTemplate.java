package jspbook.ch14;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class LogTemplate {
	private static final Logger LOG = LoggerFactory.getLogger(LogTemplate.class);
	public static void main(String[] args) {
		LOG.trace("main()");
		String msg =  "Template Message";
		LOG.debug(msg);
		LOG.info("test log");
		LOG.warn("test log : {}",msg);
		LOG.error(msg);
		int x = methodA();
	}

	static int methodA() {
		LOG.trace("methodA()");
		return 0;
	}
}
