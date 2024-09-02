package model.util.Reports;

import java.io.FileWriter;
import java.io.IOException;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import model.Report;
import model.util.LocalTimeTypeAdapter;

public class ReportsWriter {

	public static Boolean write(Report report) {
		Gson gson = new GsonBuilder()
				.registerTypeAdapter(LocalTime.class, new LocalTimeTypeAdapter())
				.create();
		List<Report> reports = ReportsReader.read();
		String path = "C:\\Users\\Ronaldo\\Documents\\TSI\\3º Semestre\\ARQWEB1\\web2_projeto\\report.json";
		
		if(reports == null) {
			// quando não tem nenhum objeto cadastrado
			reports = new ArrayList<>();
			report.setId(1L);
		}else {
			// definir o id
			report.setId(reports.get(reports.size() -1).getId() + 1);
		}
		
		// adicionar na lista
		reports.add(report);
		
		// converte para o formato JSON
		String json = gson.toJson(reports);
		
		// escrever no arquivo
		try {
			FileWriter writer = new FileWriter(path);
			writer.write(json);
			writer.close();
		}catch (IOException e) {
			e.printStackTrace();
		}
		
		return true;
	}

	public static boolean update(Report report) {
		Gson gson = new GsonBuilder()
				.registerTypeAdapter(LocalTime.class, new LocalTimeTypeAdapter())
				.create();
		List<Report> reports = ReportsReader.read();
		String path = "C:\\Users\\Ronaldo\\Documents\\TSI\\3º Semestre\\ARQWEB1\\web2_projeto\\reports.json";
		
		int index = 0;
		for(Report a: reports) {
			if(a.getId() == report.getId()) {
				reports.set(index, report);
			}
			index++;
		}
		
		// converte para o formato JSON
		String json = gson.toJson(reports);
		
		// escrever no arquivo
		try {
			FileWriter writer = new FileWriter(path);
			writer.write(json);
			writer.close();
		}catch (IOException e) {
			e.printStackTrace();
		}
		
		return true;
	}

	public static boolean delete(Report report) {
		Gson gson = new GsonBuilder()
				.registerTypeAdapter(LocalTime.class, new LocalTimeTypeAdapter())
				.create();
		
		List<Report> reports = ReportsReader.read();
		String path = "C:\\Users\\Ronaldo\\Documents\\TSI\\3º Semestre\\ARQWEB1\\web2_projeto\\reports.json";
		
		reports.remove(report);
		
		// converte para o formato JSON
		String json = gson.toJson(reports);
		
		// escrever no arquivo
		try {
			FileWriter writer = new FileWriter(path);
			writer.write(json);
			writer.close();
		}catch (IOException e) {
			e.printStackTrace();
		}
		
		return true;
	}
}