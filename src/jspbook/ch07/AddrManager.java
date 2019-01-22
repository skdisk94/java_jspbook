package jspbook.ch07;

import java.util.ArrayList;
import java.util.List;

public class AddrManager {
	List<AddrBean> addrlist = new ArrayList<AddrBean>();
	
	public void add(AddrBean ab) {
		addrlist.add(ab);
	}
	
	public List<AddrBean> getAddrList(){
		return addrlist;
	}
	
	public void modity(AddrBean ab) {
		for(AddrBean addr : addrlist) {
			if(ab.equals(addr)) {
				addr.setTel(ab.getTel());
				addr.setEmail(ab.getEmail());
				addr.setSex(ab.getSex());
				return;
			}
		}
	}
	
	public AddrBean search(String name) {
		for(AddrBean ab : addrlist){
			if(ab.getUsername().equals(name)) {
				return ab;
			}
		}
		return null;
	}
	/*public AddrBean del() {
		return addrlist.remove(index);
	}*/
}
