package model.util.Reports;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;

import model.Report;
import model.User;
import model.util.LocalTimeTypeAdapter;

public class ReportsReader {

	public static List<Report> read(){
		Gson gson = new GsonBuilder()
				.registerTypeAdapter(LocalTime.class, 
									new LocalTimeTypeAdapter())
				.create();
		List<Report> reports = null;
		String path = "C:\\Users\\Ronaldo\\Documents\\TSI\\3º Semestre\\ARQWEB1\\web2_projeto\\report.json";
		
		try {
			File file = new File(path);
			if(file.exists()) {
				BufferedReader buffer = new BufferedReader(
						new FileReader(path));
				TypeToken<List<Report>> type = 
						new TypeToken<List<Report>>() {};
						reports = gson.fromJson(buffer, type);
				buffer.close();
			}
			
		}catch (IOException e) {
			e.printStackTrace();
		}
		return reports;
	}
	
	public static List<Report> readByUser(User user){
		List<Report> reports = read();
		if(reports != null) {
			List<Report> userReports = new ArrayList<>();
			for(Report a: reports) {
				if(a.getUser().getId() == user.getId()) {
					userReports.add(a);
				}
			}
			return userReports;
		}
		return null;
	}

	public static Report findById(Long id) {
		List<Report> reports = read();
		for(Report a: reports) {
			if(a.getId() == id) {
				return a;
			}
		}
		return null;
	}
	
	public static List<Report> getReportByFilter(ReportFilter filter) {
		  List<Report> reports = readByUser(filter.getUser());
		  
		  if (filter.getType() != null) {
			  reports = reports.stream().filter(
		    		a -> a.getType() == filter.getType()).toList();
		  }

		  if (filter.getTime() != null) {
			  reports = reports.stream().filter(
		    		a -> a.getTime() == filter.getTime()).toList();
		  }

		  return reports;
	}
	
	public static List<ReportByType> getReportsStatisticsByType(User user){
		List<Report> reports = readByUser(user); 
		Map<String, Integer> reportCounts = new HashMap<>();

      for (Report report : reports) {
          String reportType = report.getType().getDescription();
          if (!reportCounts.containsKey(reportType)) {
        	  reportCounts.put(reportType, 0);
          }
          int currentCount = reportCounts.get(reportType);
          reportCounts.put(reportType, currentCount + 1);
      }

      List<ReportByType> reportTypeList = new ArrayList<>();
      for (Map.Entry<String, Integer> entry : reportCounts.entrySet()) {
          ReportByType reportByType = new ReportByType(entry.getKey(), entry.getValue());
          reportTypeList.add(reportByType);
      }

      return reportTypeList;
	}
}