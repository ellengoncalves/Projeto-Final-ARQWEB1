package model.util.Reports;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;

import model.Report;
import model.User;
import model.util.LocalDateTypeAdapter;

public class ReportsReader {

	public static List<Report> read(){
		Gson gson = new GsonBuilder()
				.registerTypeAdapter(LocalDate.class, 
						new LocalDateTypeAdapter())
				.create();
		List<Report> reports = null;
		String path = "/home/aluno/Documentos/Ellen/WEB1/Workspace2/reports.json";
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
}

