package com.hotel.util;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
public class HotelUtil {
	
	public static List<int[]> formatDay(String day){
		List<int[]> list = new ArrayList<int[]>();
		
		String[] days = day.split(",");
		int[] a = new int[days.length];
		for(int i = 0;i<days.length;i++){
			a[i] = Integer.parseInt(days[i]);
		}
		int[] s1 = null;
		 int n =0;
		 int j = 0;
		 int k = 0;
		 for(int i = 1;i<days.length;i++){
		 	if(a[i]-a[i-1]==1){
		 		n++;
		 	}else{
		 		s1 = new int[n+1];
		 		for(;j<i;j++){
		 			s1[k] =a[j];
		 			k++;
		 		}
		 		list.add(s1);
		 		k=0;
		 		n=0;
		 	}
		 }
		
		   s1 = new int[n+1];
		  
	 		for(;k<=n;){
	 			s1[k] = a[j+k];
	 			k++;
	 		}
	 		
		 list.add(s1);
		return list;
	}
	
	public static int getNowDay(){
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMdd");//设置日期格式
		return Integer.parseInt(df.format(new Date()));// new Date()为获取当前系统时间
	}
	
	
	public static List<String> formatFLday(String day){
		List<String> list = new ArrayList<String>();
		
		String[] days = day.split(",");
		int[] a = new int[days.length];
		for(int i = 0;i<days.length;i++){
			a[i] = Integer.parseInt(days[i]);
		}
		int[] s1 = null;
		 int n =0;
		 for(int i = 1;i<days.length;i++){
		 	if(a[i]-a[i-1]==1){
		 		n++;
		 	}else{
		 		s1 = new int[2];
		 		s1[0] = a[i-n-1];
		 		s1[1] = a[i-1];
		 		list.add(""+s1[0]+"-"+s1[1]);
		 		n=0;
		 	}
		 }
		 s1 = new int[2];	
		   s1[0] = a[days.length-n-1];
	 		s1[1] = a[days.length-1];
		   
		   list.add(""+s1[0]+"-"+s1[1]);
		return list;
	}
	public static void main(String[] args) {
		String a = new String("01,02,05,06,08");
		String b = new String("20150402,20150408,20150409");
		String c = new String("02,08,09");
		List<String> list = formatFLday(a);
		System.out.println(list.size());
		//getNowDay();
	}
}
