package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Report;
import model.util.Reports.ReportsReader;

@WebServlet("/viewReports")
public class ViewReports extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public ViewReports() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Report> reports = ReportsReader.read();
        req.setAttribute("reports", reports);
        req.getRequestDispatcher("/view-reports.jsp").forward(req, resp);
    }
}