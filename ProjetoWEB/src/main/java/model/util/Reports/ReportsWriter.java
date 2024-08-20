package model.util.Reports;

import java.io.FileWriter;
import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import model.Report;
import model.util.LocalDateTypeAdapter;

public class ReportsWriter {

	public static Boolean write(Report report) {
		Gson gson = new GsonBuilder()
				.registerTypeAdapter(LocalDate.class, 
						new LocalDateTypeAdapter())
				.create();
		List<Report> reports = ReportsReader.read();
		String path = "/home/aluno/Documentos/Ellen/WEB1/Workspace2/reports.json";
		
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
				.registerTypeAdapter(LocalDate.class, 
						new LocalDateTypeAdapter())
				.create();
		List<Report> reports = ReportsReader.read();
		String path = "C:\\Users\\usuar\\Downloads\\ARQWEB1-2024-main\\ARQWEB1-2024-main\\ProjetoWeb\\src\\main\\webapp\\WEB-INF\\reports.json";
		
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
				.registerTypeAdapter(LocalDate.class, 
						new LocalDateTypeAdapter())
				.create();
		List<Report> reports = ReportsReader.read();
		String path = "C:\\Users\\usuar\\Downloads\\ARQWEB1-2024-main\\ARQWEB1-2024-main\\ProjetoWeb\\src\\main\\webapp\\WEB-INF\\reports.json";
		
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

