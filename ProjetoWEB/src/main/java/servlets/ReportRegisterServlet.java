package servlets;

import java.io.IOException;
import java.time.LocalTime;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import model.Neighborhood;
import model.Report;
import model.ReportType;
import model.User;
import model.util.Reports.ReportsReader;
import model.util.Reports.ReportsWriter;

@WebServlet("/reportRegister")
public class ReportRegisterServlet extends HttpServlet {
	
    private static final long serialVersionUID = 1L;

    public ReportRegisterServlet() {
        super();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    		Long id = Long.parseLong(req.getParameter("id"));
    		ReportType type = ReportType.valueOf(req.getParameter("type"));
    		LocalTime time = LocalTime.parse(req.getParameter("time"));
    		Neighborhood neighborhood = Neighborhood.valueOf(req.getParameter("neighborhood"));
    		String address = req.getParameter("address");
            String description = req.getParameter("description");
            String url;
    		HttpSession session = req.getSession(false);

    		User user = (User) session.getAttribute("user");
            Report report = new Report();
            report.setType(type);
            report.setTime(time);
            report.setNeighboorhood(neighborhood);     
            report.setDescription(description);
            report.setAddress(address);
            report.setUser(user);

            if (id == 0) {
    			if (ReportsWriter.write(report)) {
    				req.setAttribute("result", "registered");
    			}
    		} else {
    			report.setId(id);
    			if (ReportsWriter.update(report)) {
    				req.setAttribute("result", "registered");
    			}
    		}
    		url = "/report-register.jsp";
    		
    		RequestDispatcher dispatcher = req.getRequestDispatcher(url);
    		dispatcher.forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	String action = req.getParameter("action");
		Long id = Long.parseLong(req.getParameter("report-id"));
		String url = null;

		Report report = ReportsReader.findById(id);
		RequestDispatcher dispatcher = null;
		
		if(report != null) {
			if(action.equals("update")) {
				req.setAttribute("report", report);
				url = "/report-register.jsp";
				dispatcher = req.getRequestDispatcher(url);
				dispatcher.forward(req, resp);
			}
			if(action.equals("remove")) {
				Boolean response = ReportsWriter.delete(report);
				Gson gson = new Gson();
				String json = gson.toJson(response);
				resp.setContentType("application/json");
				resp.getWriter().write(json.toString());
			}
		}else {
			url = "/homeServlet";
			dispatcher = req.getRequestDispatcher(url);
			dispatcher.forward(req, resp);
		}
    }
}